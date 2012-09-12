// This declaration makes the javascript code share the execution context between
// different qml files.

.pragma library

var stack = []

var mainContainer

var current_index = -1

var changing_page = false

function openSlide(slideNumber) {
    return openPage("Slide" + slideNumber + ".qml")
}

// Create a QML object from a given filename and push it on the stack
function openPage(filename, properties) {
    if (properties === undefined)
        properties = {}
    return _openPage(filename, properties)
}

// Create a QML object from a given filename and push it on the stack
function _openPage(filename, properties) {
    if (changing_page == true)
        return

    if (stack.length > 0)
        changing_page = true

    var page = undefined
    // now, Stack.js is in a js subdir so we have to trick the filename
    var page_component = Qt.createComponent(filename)

    // The component status (like the Component.Ready that has 1 as value) is not currently
    // available on js files that uses .pragma library declaration.
    // This should be fixed in the future:
    // http://lists.qt.nokia.com/pipermail/qt-qml/2010-November/001713.html
    if (page_component.status === 1) {
        page = page_component.createObject(mainContainer, properties)
        if (page === null) {
            console.log('Error on creating the object for the page: ' + filename)
            console.log('Properties:')
            for (var k in properties)
                console.log('    ' + k + ": " + properties[k])
            changePageDone()
            return null
        }
    }
    // Component.Error
    else if (page_component.status === 3) {
        console.log("Error in creating page component: ")
        console.log(page_component.errorString())
        changePageDone()
        return null
    }

    pushPage(page)
    return page
}

function currentPage() {
    return stack[stack.length - 1]
}

function transitionAfterPush() {
    var out_index = stack.length - 2
    var in_index = stack.length - 1
    if (out_index >= 0)
        stack[out_index].pushOutStart()
    if (in_index >= 0)
        stack[in_index].pushInStart()
}

function transitionBeforePop(target_index) {
    var out_index = stack.length - 1
    var in_index = target_index

    if (out_index >= 0)
        stack[out_index].popOutStart()
    if (in_index >= 0)
        stack[in_index].popInStart()
}

function pushPage(page) {
    stack.push(page)
    current_index = stack.length - 1;
    if (stack.length > 1)
        transitionAfterPush()
}

function showPreviousPage(index) {
    if (changing_page == true)
        return

    changing_page = true

    stack[index].visible = true
    transitionBeforePop(index)
    current_index = index
}

function popPage() {
    if (stack.length > 1)
        showPreviousPage(stack.length - 2)
}

// tries to remove count pages from the stack
// if count is bigger than the number of stack pages, removes all except the home
// if count is less or equal to zero does nothing
function popPages(count) {
    if (count <= 0) // nothing to do
        return

    if (count >= stack.length) {
        backToHome()
        return
    }

    showPreviousPage(stack.length - count - 1)
}

function backToHome() {
    showPreviousPage(0)
}

function changePageDone() {
    // This function is called twice on each page change, small optimization
    if (!changing_page)
        return

    for (var i = 0; i < stack.length; i++) {
        if (i !== current_index)
            stack[i].visible = false

        if (i > current_index)
            stack[i].destroy()
    }
    stack.length = current_index + 1
    changing_page = false
    console.log("Opening page: " + stack[current_index])
}

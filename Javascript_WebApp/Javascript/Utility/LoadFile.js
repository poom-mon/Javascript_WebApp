

var filesadded = ""
function checkLoadScriptSuccess(filename, filetype) {
    //example : 
    //checkLoadScriptSuccess("myscript.js", "js") 
    if (filesadded.indexOf("[" + filename + "]") == -1) {
        loadScript(filename, filetype)
        filesadded += "[" + filename + "]" //List of files added in the form "[filename1],[filename2],etc"
    }
    else
        alert("file already added!")
}
function loadScript(filename, filetype) {
    // loadScript("myscript.js", "js") //dynamically load and add this .js file
    // loadScript("mystyle.css", "css") ////
    if (filetype == "js") { //if filename is a external JavaScript file
        var fileref = document.createElement('script')
        fileref.setAttribute("type", "text/javascript")
        fileref.setAttribute("src", filename)
    }
    else if (filetype == "css") { //if filename is an external CSS file
        var fileref = document.createElement("link")
        fileref.setAttribute("rel", "stylesheet")
        fileref.setAttribute("type", "text/css")
        fileref.setAttribute("href", filename)
    }
    if (typeof fileref != "undefined")
        document.getElementsByTagName("head")[0].appendChild(fileref)
}
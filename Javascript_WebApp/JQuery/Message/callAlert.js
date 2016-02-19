

// Message
// var Msg = new Message();
// Msg.Primary("title","display ja",true,"primary ok");  

var Message = function (cssAlertpath, jsAlertPath) {
    checkLoadScriptSuccess(cssAlertpath, "css");
    checkLoadScriptSuccess(jsAlertPath, "js");

};
Message.prototype.Primary = function (title, textDisplay, stCancel, textButton, objId) {
    swal({
        title: title,
        text: textDisplay,
        type: "info",
        showCancelButton: stCancel,
        confirmButtonClass: 'btn-primary',
        confirmButtonText: textButton
    });
    if (objId !== false) {
        objId.focus();
        objId.css('background-color', '#FFFFCC');
    }
};

Message.prototype.Info = function (title, textDisplay, stCancel, textButton, objId) {
    swal({
        title: title,
        text: textDisplay,
        type: "info",
        showCancelButton: stCancel,
        confirmButtonClass: 'btn-info',
        confirmButtonText: textButton
    });
    if (objId !== false) {
        objId.css('background-color', '#FFFFFF');
        objId.focus();
    }
};
Message.prototype.Success = function (title, textDisplay, stCancel, textButton, objId) {
    swal({
        title: title,
        text: textDisplay,
        type: "success",
        showCancelButton: stCancel,
        confirmButtonClass: 'btn-success',
        confirmButtonText: textButton
    });
    if (objId !== false) {
        objId.css('background-color', '#FFFFFF');
        objId.focus();
    }
};
Message.prototype.Warning = function (title, textDisplay, stCancel, textButton, objId) {
    swal({
        title: title,
        text: textDisplay,
        type: "warning",
        showCancelButton: stCancel,
        confirmButtonClass: 'btn-warning',
        confirmButtonText: textButton
    });
    if (objId !== false) {
        objId.css('background-color', '#FFFFFF');
        objId.focus();
    }
};
Message.prototype.Danger = function (title, textDisplay, stCancel, textButton, objId) {
    swal({
        title: title,
        text: textDisplay,
        type: "error",
        showCancelButton: stCancel,
        confirmButtonClass: 'btn-danger',
        confirmButtonText: textButton
    });
    if (objId !== false) {
        objId.css('background-color', '#FFFFFF');
        objId.focus();
    }
};
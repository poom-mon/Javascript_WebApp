
function validElement(el, type) {
    var v = true;
    var id = el.prop('id');
    var val = $.trim(el.val()); //id.indexOf('ddl_') == 0 ? $.trim(el.find('option:selected').text()) : $.trim(el.val());

    switch (type) {
        case 'split_name': v = validCusName(el); break;
        case 'idcard': v = validIDCard(val); break;
        case 'mobile': v = validMobile(val); break;
        case 'email': v = validEmail(val); break;
        case 'noregister': v = validNoRegister(el); break;
        case 'noenginebin': v = validNotThaiSpecialKey(val); break;
        default: break;
    }

    if (!v || val == '') {
        el.addClass('_alert');
        v = false;
    } else {
        el.removeClass('_alert');
        v = true;
    }
    return v;
}
function scroll2Err() {
    var $el_error = $('._alert').first();

    //var idCollapse = $el_error.closest('.collapse').prop('id');
    //showCollapse('#' + idCollapse, false);

    $('html, body').animate({ scrollTop: $el_error.offset().top - 40 }, 360);
    $el_error.focus();

    if (!$el_error.prop('id').indexOf('ddl_') == 0) {
        $el_error[0].setSelectionRange(0, $el_error.val().length);
    }
}

function validCusName(id) {
    var v = true;
    var _name = getSplitName(id);
    if (_name.fname == '' || _name.lname == '') {
        v = false;
    }

    return v;
}

function getSplitName(id) {
    var _name = getObjVal($(id))
        , f = _name.substring(0, _name.indexOf(' '))
        , l = $.trim(_name.substring(f.length));
    return {
        fname: f
        , lname: l
    };
}

function validText(str) {
    if ($.trim(str.val()) == "")
        return false;
    else
        return true;
}
function validEmail(str) {
    var email_check = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}$/i;
    if (email_check.test(str.replace(/^\s+|\s+$/g, '')) === false || str.length < 1) {
        return false;
    } else {
        return true;
    }
}
function validMobile(str) {
    var regex = /^0[6,8,9]{1}[0-9]{8}$/;
    return regex.test(str);
}
function validHomeTel(str) {
    var regex1 = /^02[0-9]{7}$/;
    var regex2 = /^0[3,4,5,7]{1}[2-9]{1}[0-9]{6}$/;
    return (regex1.test(str) || regex2.test(str))
}
function validIDCard(str) {
    for (i = 0, sum = 0; i < 12; i++) {
        sum += parseFloat(str.charAt(i)) * (13 - i);
    }

    if ((11 - sum % 11) % 10 != parseFloat(str.charAt(12))) {
        return false;
    }
    else {
        return true;
    }
}


function validTextThai(data) {
    var regexType1 = /^[ก-ฮ]+$/;
    if (regexType1.test(data))
        return true;
    else
        return false;
}

function validTextEn(data) {
    var regexType1 = /^[A-Za-z.]+$/;
    if (regexType1.test(data))
        return true;
    else
        return false;
}
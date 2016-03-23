

//วิธีเรียกใช้
//callCheckPage.cCheckPage(_firstPage, _teminalPage," ท่านเคยมาเพจนี้แล้ว ");

var ___path = document.location.pathname.match(/[^\/]+$/)[0];

var callCheckPage = (function () {
    var _$$callApi = {};
    var _$$cookName = "arrPage";

    _$$callApi.cCheckPage = function (_firstPage, _teminalPage, _message) { 
        //        if (___path == _firstPage) {
        //            $$destoy_cookie();
        //        } 
        var __ccCheck = true;
        var _obj12345 = new Array()
        if ($$checkCookie001(_$$cookName)) {
            _$$callApi.getCookie(); 
            _obj12345 = JSON.parse($$getCookie001(_$$cookName))
            for (var i = 0; i < _obj12345.length; i++) {
                if (_obj12345[i]._$pagexxx == ___path) {
                    var txt;
                    var r = confirm(_message);
                    if (r == true) { 
                        $$destoy_cookie(); 
                        var myVar = setInterval(function () {
                            $$destoy_cookie();
                            if (!$$checkCookie001(_$$cookName)) {
                                myStopFunction(myVar);
                                window.location.href = _firstPage; 
                            }
                            console.log("1");
                        }, 1000);
                        

                    }
                    __ccCheck = false;
                    break;
                }
            }
        }
        if (__ccCheck) {
            _obj12345.push({ _$pagexxx: ___path });
        }
        $$setCookie001(_$$cookName, JSON.stringify(_obj12345), 120);
        console.log("_page-Name : ", JSON.parse($$getCookie001(_$$cookName)));

        if (___path == _teminalPage) {
            console.log("destroy", ___path, _teminalPage);
           $$destoy_cookie();
        }

    }

    function myStopFunction(_obName) {
        clearInterval(_obName);
    }

    _$$callApi.getCookie = function () {
        console.log("_page-Name : ", JSON.parse($$getCookie001(_$$cookName)));
    }
    _$$callApi.destoy_cookie = function () {
        document.cookie = _$$cookName + "=;expires=Thu, 01 Jan 1970 00:00:01 GMT;";
    }
    var $$destoy_cookie = function () {
        document.cookie = _$$cookName + "=;expires=Thu, 01 Jan 1970 00:00:01 GMT;";
    };
    var $$delete_cookie = function (name) {
        document.cookie = _$$name + "=;expires=Thu, 01 Jan 1970 00:00:01 GMT;";
    };
    var $$setCookie001 = function (cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    };

    var $$getCookie001 = function (name) {
        var value = "; " + document.cookie;
        var parts = value.split("; " + name + "=");
        if (parts.length == 2) return parts.pop().split(";").shift();
    };

    var $$checkCookie001 = function (name) {
        var _objCook = $$getCookie001(name) || "";
        if (_objCook != "") {
            return true;
        } else {
            return false;
        }
    };

    return _$$callApi;
} ());

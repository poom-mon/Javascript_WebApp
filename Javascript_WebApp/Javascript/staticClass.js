


/*****
 // call solution : 
<script src="../Javascript/staticClass.js" type="text/javascript"></script>
<script>
    // call class A : 
    console.log(callClass.cClassA());
    // call class B : 
     var _object = {x : "1",y:"2"}
    console.log(callClass.cClassB(_object));
    // call class C : 
    console.log(callClass.cClassC());
</script> 
*****/


var callClass = (function () {
    var _objTmp = {};

    _objTmp.cClassA = function () {
        // object call class C
        var _obj = _objTmp.cClassC();
        _obj.ItemAdd1 = "Item3";
        _obj.ItemAdd2 = "Item4";

        return _obj;
    }
    _objTmp.cClassB = function (obj) {
        // object return parameter
        return obj;
    }

    _objTmp.cClassC = function () {
        var data = { data1: "date1", data2: "data2" }
        return data;
    }

    return _objTmp;
} ());
  
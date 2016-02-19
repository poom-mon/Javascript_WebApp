
/////////////////////////////////
////  class 
/* 
var call = new callClass();
console.log(" call B", call.cClassB(1234))

 // class not return
    call.cClassD()


*/
///////////////////////////////// 

var callClass = function () {
    // constructure
}; 

callClass.prototype.cClassA = function() {
    return Message.cClassC();
};
 
callClass.prototype.cClassB= function(obj) {
    return obj
};


callClass.prototype.cClassC = function() {
    var data = { data1: "date1", data2: "data2" }
    return data;
};


callClass.prototype.cClassD = function () {
    var data = { data1: "date1", data2: "data2" }
    console.log(data);
};



/////////////////////////////////
//// แบบ ย่อ
/* 
    var call2 = new callClass2();
    console.log(call2.A(), call2.B());
*/
/////////////////////////////////

var callClass2 = function () {
    // constructure
};

callClass2.prototype = {
    A: function A() {
        return "class A";
    },
    B: function B() {
        return "class B";
    } 
};
  
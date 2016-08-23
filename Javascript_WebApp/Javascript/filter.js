[ ].map || (Array.prototype.map = function (a) { for (var b = this, c = b.length, d = [], e = 0, f; e < b; ) d[e] = e in b ? a.call(arguments[1], b[e], e++, b) : f; return d })

//function dynamicSort(property) {
//    return function (obj1, obj2) {
//        return obj1[property] > obj2[property] ? 1
//            : obj1[property] < obj2[property] ? -1 : 0;
//    }
//} 
//function dynamicSortMultiple() {
//    //save the arguments object as it will be overwritten
//    //note that arguments object is an array-like object
//    //consisting of the names of the properties to sort by
//    var props = arguments;
//    return function (obj1, obj2) {
//        var i = 0, result = 0, numberOfProperties = props.length;
//        //try getting a different result from 0 (equal)
//        //as long as we have extra properties to compare
//        while (result === 0 && i < numberOfProperties) {
//            result = dynamicSort(props[i])(obj1, obj2);
//            i++;
//        }
//        return result;
//    }
//}

/*******************************/
// filter function
function isInt(value) {
    return !isNaN(value) && (function (x) { return (x | 0) === x; })(parseFloat(value))
}
function dynamicSort(property) {
    return function (obj1, obj2) {
        if (isInt(obj1[property]) || isInt(obj2[property])) //sorter int
            return obj1[property] > obj2[property] ? 1 : obj1[property] < obj2[property] ? -1 : 0;
        else { //sorter string
            return (obj1[property]).localeCompare(obj2[property]);
        }
    }
}
function dynamicSortMultiple() {
    var props = arguments;
    return function (obj1, obj2) {
        var i = 0, result = 0, numberOfProperties = props.length;
        while (result === 0 && i < numberOfProperties) {
            result = dynamicSort(props[i])(obj1, obj2);
            i++;
        }
        return result;
    }
}
// end filter function
/******************************/ 

var ob = [
  { comen: "", company: "แอลเอ็มจี ประกันภัย", net: 10 },
    { company: "อลิอันซ์ ซี.พี. ประกันภัย", net: 1 },
    { company: "แอลเอ็มจี ประกันภัย", net: 30 },
    { company: "อลิอันซ์ ซี.พี. ประกันภัย", net: 2 },
    { company: "แอลเอ็มจี ประกันภัย", net: 20 },
    { company: " เทเวศประกันภัย", net: 5 },
    { company: " เทเวศประกันภัย", net: 10 }
  ]


var g = ob
    .sort(dynamicSortMultiple("company", "net"))
    .map(function (val, i) { return [val["company"], val["net"]].join(" ") })
    .join("\n");

console.log(g)
import Foundation

let myName = "Weihao"
let yourName = "Foo"


// if using `let`
// then cannot be reassign
// or mutating later on
var names = [
    myName,
    yourName
]

names.append("bar")


let foo = "Foo"
var foo2 = foo // coying the value of foo to foo2
foo2 = "Foo 2"
foo
foo2

// valueTypes and ReferenceType(class)


let moreNames = [
    "Foo",
    "bar"
] // array -> structure -> valueTypes (copying over the contents to a new var)

var copy = moreNames
copy.append("newEle")
moreNames
copy


let oldArray = NSMutableArray(array: ["Foo", "Bar"]) // this is a class instance
// this is mutable even though assign let before

oldArray.add("Weihao")

var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

// be careful when passing referenceType as a parameter

func changeTheArray(_ array: NSArray) {
    let array2 = array as! NSMutableArray // promting type to be MSMutableArray, dont do this
    array2.add("BAz")
    
}

changeTheArray(oldArray)
oldArray

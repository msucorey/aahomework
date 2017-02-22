// Input
//
// 1) A String, called searchString.
// 2) A String, called subString.
// Output: A Boolean. true if the subString is a part of the
// searchString.
//
// > isSubstring("time to program", "time")
// true
//
// > isSubstring("Jump for joy", "joys")
// false

function isSubstring(searchString, subString) {
  console.log(searchString.includes(subString));
}

isSubstring("time to program", "time");

isSubstring("Jump for joy", "joys");

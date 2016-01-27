var checkAll = require('./check_all.js')

// Possible decoding types:
// "every-forwards", "even-forwards", "odd-forwards"
// "every-backwards", "even-backwards", "odd-backwards"
// 
var sentence1 = "Attack her nose under here with an itch"
var sentence2 = "Raul Nuñez call never finished"
var sentence3 = "Start rapping this or countless queasy wizards give back jay-z"
var sentence4 = "inner peace is overrated"
var sentence5 = "Fill the proper tank for the cow"



var firstSecretMessage = checkAll(sentence1);
var secondSecretMessage = checkAll(sentence2);
var thirdSecretMessage = checkAll(sentence3);
var fourthSecretMessage= checkAll(sentence4);
var fifthSecretMessage= checkAll(sentence5);

console.log(firstSecretMessage);
console.log(secondSecretMessage);
console.log(thirdSecretMessage);
console.log(fourthSecretMessage);
console.log(fifthSecretMessage);
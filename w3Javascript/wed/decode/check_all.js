var superDecode = require('./super_decode.js');

// Possible decoding types:
// "every-forwards", "even-forwards", "odd-forwards"
// "every-backwards", "even-backwards", "odd-backwards"

function checkAll(sentence){
	var checks = [];
	var options = ["every-forwards", "every-backwards", "odd-backwards", "odd-forwards", "even-backwards", "even-forwards"]
	for(var i=0; i<options.length - 1;i++){
		var decoded = superDecode(sentence, options[i]);
		checks.push(decoded);
	}
	return checks;
}
var sentence1 = "Raul Nuñez call never finished"
var hey = checkAll(sentence1);
console.log(hey);









module.exports = checkAll;
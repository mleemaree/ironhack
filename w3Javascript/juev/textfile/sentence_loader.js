var fs = require('fs');

function sentenceLoader(file, callback){
	function splitSentences(err, str){
		if(err){
			console.log("ups", err);
		}else{
			var sentences= str.split('.');
			callback(sentences);
		}
	}
	fs.readFile(file, 'utf8', splitSentences);	
}


module.exports = sentenceLoader;
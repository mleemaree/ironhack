var fs = require('fs');
var sentenceLoader = require('sentenceLoader');

function print(error,content){
	if(error){
		console.log("ups");
	}else{
		console.log(content);
	}
}


fs.readFile('file.txt','utf8',print);
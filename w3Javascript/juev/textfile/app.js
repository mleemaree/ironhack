var sentenceLoader = require('./sentence_loader');

sentenceLoader('file.txt', function(sentences){
	sentences.forEach(function(aSentence){
		console.log('\n     ' + aSentence);
		console.log('\n------------------¯\\_(ツ)_/¯-----------------------')
	});
});


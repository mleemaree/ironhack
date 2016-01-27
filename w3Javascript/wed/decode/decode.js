function decode(words) {
  var secretMessage = words.reduce(function(acc, currentWord, index) {
    var secretLetter = currentWord.charAt(index % 5);
    return acc + secretLetter;
  }, '');

  return secretMessage;
}



module.exports = decode;

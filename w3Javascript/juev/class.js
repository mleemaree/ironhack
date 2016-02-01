var animal = {
	name: 'markov',
	noise: 'grrrr',
	makeNoise: function() {
		console.log('Making a noise!');
	}
};


var Animal = function(name, noise){
	this.name = name;
	this.noise = noise;
}

Animal.prototype.makeNoise = function(){
	console.log(this.name + ' is ' + this.noise + 'ing.');
}

var charles = new Animal('Charles', 'bark');
charles.makeNoise();


//CALLING FUNCTIONS

//function style
function hey(){}
hey();
// 'this' is set to the main environment
// in the browser it is usually the 'window'

//method style
ford.makeNoise();
//'this' is set to the instance: 'ford'

//constructor style
var cat = new Animal();
// 'this' is set to an empty object: {}
// which gets returned automatically
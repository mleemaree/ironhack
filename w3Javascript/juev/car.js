var Car = function(model, noise){
	this.model = model;
	this.noise = noise;
}

Car.prototype.wheels = 4;

Car.prototype.sound = function(){
	console.log('the ' + this.model + ' is ready, and set...to ' + this.noise);
}

Car.prototype.tires = function(){
	console.log('the ' + this.model + ' still has ' + this.wheels + ' tires.');
}

var ford = new Car('ford', "vrooooom");
var honda = new Car('honda', 'bzzzzz');
var vw = new Car('vw', 'blat');

ford.sound();
vw.sound();
honda.sound();

vw.tires();


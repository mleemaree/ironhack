var app = app || {};

$(function () {
	'use strict';

	// Todo Model
	// ----------

	app.Movie = Backbone.Model.extend({
		// Default attributes
		defaults: {
			title: '',
			poster:''
		},
	});
})();
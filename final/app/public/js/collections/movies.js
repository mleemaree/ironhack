var app = app || {};

$(function () {
	'use strict';

	// Todo Collection
	// ---------------

	// The collection of todos is backed by *localStorage* instead of a remote
	// server.
	var Movies = Backbone.Collection.extend({
		// Reference to this collection's model.
		model: app.Todo,

	});

	// Create our global collection of **Todos**.
	app.Movies = new Movies();
})();
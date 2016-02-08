var app = app || {};

var app = app || {};

$(function(){
	'use strict';

	// The Application
	// ---------------

	// Our overall **AppView** is the top-level piece of UI.
	var AppView = Backbone.View.extend({
		el: $('#container')
		initialize: function () {
			_.bindAll(this, 'render');
			this.render();
		},
		render: function(){
			$(this.el).appent('<h1>Hello World</h1>')
		}
	});
	var appView = new AppView();
});


var capitalize = require("../capitalize");

var chai = require("chai");
var expect = chai.expect;
var assert = chai.assert;

describe("capitalize", function(){

	it("capitalizes single words", function(){
		expect(capitalize("express")).to.equal("Express");
		expect(capitalize("cats")).to.equal("Cats");

	});

	it("makes the rest of the string lowercase", function(){
		expect(capitalize("javaScript")).to.equal("Javascript");
		expect(capitalize("tobiaS")).to.equal("Tobias");

	});

	it("leaves empty strings alone", function(){
		expect(capitalize("")).to.equal("");

	});

	it("leaves strings with no words alone", function() {
	  	expect(capitalize("  ")).to.equal("  ");
	  	expect(capitalize("123")).to.equal("123");
	});


	it("capitalizes multiple-word strings", function() {
		  expect(capitalize("what is Express?")).to.equal("What is express?");
		  expect(capitalize("i love lamp")).to.equal("I love lamp");
	});

	it("leaves already-capitalized words alone", function() {
		  expect(capitalize("Express")).to.equal("Express");
		  expect(capitalize("Evan")).to.equal("Evan");
		  expect(capitalize("Catman")).to.equal("Catman");
	});

	it("throws an error if passed a number", function() {
		  expect(function() { capitalize(123); }).to.throw(Error);
	});

	it("asserting that two values are not equal", function() {
		assert.notEqual(capitalize("Catman"), capitalize("chicken"), 'these values are not equal');
	});


});
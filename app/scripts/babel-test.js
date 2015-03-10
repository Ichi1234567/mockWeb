"use strict";

// Expression bodies
var evens = [0, 2, 4, 6];
// var odds = evens.map(v => v + 1);
var nums = evens.map((v, i) => v + i);

// Statement bodies
var fives = [];
nums.forEach(v => {
  if (v % 5 === 0) {
    fives.push(v);
  }
});

// Lexical this
var bob = {
  name: "Bob",
  friends: [],
  printFriends() {
    this.friends.forEach(f =>
      console.log(this.name + " knows " + f));
  },
  addFriends(name) {
    this.friends.push(name);
  }
};

module.exports = {
  bob: bob
};


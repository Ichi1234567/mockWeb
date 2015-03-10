/** @jsx React.DOM */

"use strict";
var BebelReact = React.createClass({
  render() {
    return <h3>
        Hello BebelReact
        <button>Hi!</button>
      </h3>;
  }
});

BebelReact = React.createFactory(BebelReact);
module.exports = {
  start(elm) {
    React.render(BebelReact(), elm);
  }
};

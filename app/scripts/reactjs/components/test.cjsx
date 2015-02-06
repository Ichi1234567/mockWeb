# @cjsx React.DOM

TestText = React.createClass
  displayName: 'TestText'
  render: ->
    <h3>Hello React!</h3>

TestText = React.createFactory TestText

module.exports =
  start: (elm)->
    React.render TestText(), elm


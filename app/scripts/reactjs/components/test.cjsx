# @cjsx React.DOM

TestText = React.createClass
  displayName: 'TestText'
  render: ->
    <h3>Hello World!</h3>

TestText = React.createFactory TestText

module.exports =
  start: (elm)->
    React.render TestText(), elm


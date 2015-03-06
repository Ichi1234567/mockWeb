# @cjsx React.DOM

FakerName = React.createClass
  displayName: 'FakerName'
  getDefaultProps: ->
    info: React.PropTypes.string
  getInitialState: ->
    {
      value: ''
    }
  componentDidMount: ->
    info = @props.info.split '/'
    if info.length and faker.name[info[0]]
      value = faker.name[info[0]].apply(null, info.slice(1))
    else
      value = faker.name.findName()
    @setState({ value: value })

  render: ->
    <span>{@state.value}</span>

module.exports =
  FakerName: FakerName
  start: (elm) ->
    NameFact = React.createFactory FakerName
    info = elm.getAttribute 'data-faker-name'
    elm.removeAttribute 'data-faker-name'
    React.render(
      NameFact(
        info: info
      )
      elm
    )


# @cjsx React.DOM

FakerLorem = React.createClass
  displayLorem: 'FakerLorem'
  getDefaultProps: ->
    info: React.PropTypes.string
  getInitialState: ->
    {
      value: ''
    }
  componentDidMount: ->
    info = @props.info.split '/'
    if info.length and faker.lorem[info[0]]
      value = faker.lorem[info[0]].apply(null, info.slice(1))
      if info[0] is 'words'
        value = value.join ' '
    else
      value = faker.lorem.words().join(' ')
    @setState({ value: value })

  render: ->
    <span>{@state.value}</span>

module.exports =
  FakerLorem: FakerLorem
  start: (elm) ->
    LoremFact = React.createFactory FakerLorem
    info = elm.getAttribute 'data-faker-lorem'
    elm.removeAttribute 'data-faker-lorem'
    React.render(
      LoremFact(
        info: info
      )
      elm
    )



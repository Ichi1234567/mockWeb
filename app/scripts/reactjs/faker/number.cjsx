# @cjsx React.DOM

FakerNumber = React.createClass
  displayNumber: 'FakerNumber'
  getDefaultProps: ->
    info: React.PropTypes.string
    tagName: 'span'
  getInitialState: ->
    {
      value: ''
    }
  componentDidMount: ->
    info = @props.info.split '/'
    if info[1]
    else
      value = faker.random.number()
    switch true
      when info[0] and /-/.test(info[0])
        opts = info[0].split '-'
        min = parseInt opts[0]
        max = parseInt opts[1]
        value = faker.random.number { min: min, max: max }
        info[0] = value
      when info[1] and /-/.test(info[1])
        opts = info[1].split '-'
        min = parseInt opts[0]
        max = parseInt opts[1]
        value = faker.random.number { min: min, max: max }
        info[1] = value
    value = info.join ''
    @setState({ value: value })
  render: ->
    <span>{@state.value}</span>

module.exports =
  FakerNumber: FakerNumber
  start: (elm) ->
    NumberFact = React.createFactory FakerNumber
    info = elm.getAttribute 'data-faker-number'
    tagName = elm.getAttribute 'tagName'
    elm.removeAttribute 'data-faker-number'
    elm.removeAttribute 'tagName'
    React.render(
      NumberFact(
        info: info
        tagName: tagName
      )
      elm
    )


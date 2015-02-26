# @cjsx React.DOM

FakerNumber = React.createClass
  displayNumber: 'FakerNumber'
  getDefaultProps: ->
    info: React.PropTypes.string
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
      when info[1] and /-/.test(info[1])
        opts = info[1].split '-'
        min = parseInt opts[0]
        max = parseInt opts[1]
        value = faker.random.number { min: min, max: max }
      when info[1] and !/-/.test(info[1])
        value = faker.random.number parseInt(info[1])
      else
        value = faker.random.number()
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
    React.render(
      NumberFact(
        info: info
      )
      elm
    )


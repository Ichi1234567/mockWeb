# @cjsx React.DOM

FakerDate = React.createClass
  displayDate: 'FakerDate'
  getDefaultProps: ->
    info: React.PropTypes.string
    format: ''
  getInitialState: ->
    {
      value: ''
    }
  componentDidMount: ->
    info = @props.info.split '/'
    if info.length and faker.date[info[0]]
      value = faker.date[info[0]].apply(null, info.slice(1))
    else
      value = faker.date.recent()
    value = moment(value).format(@props.format)
    @setState({ value: value })
  render: ->
    <span>{@state.value}</span>

module.exports =
  FakerDate: FakerDate
  start: (elm) ->
    DateFact = React.createFactory FakerDate
    info = elm.getAttribute 'data-faker-date'
    format = elm.getAttribute 'format'
    elm.removeAttribute 'data-faker-date'
    elm.removeAttribute 'format'
    React.render(
      DateFact(
        info: info
        format: format
      )
      elm
    )



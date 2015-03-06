# @cjsx React.DOM

FakerImage = React.createClass
  displayName: 'FakerImage'
  getDefaultProps: ->
    info: React.PropTypes.string
    classes: React.PropTypes.string
  getInitialState: ->
    {
      href: 'http://placehold.it/100x100'
    }
  componentDidMount: ->
    info = @props.info.split('/')
    if info.length is 3
      href = @createFakerImage.apply(@, info)
    else
      href = @createPlacehold.apply(@, info)
    @setState({ href: href })
  createFakerImage: (type, w, h) ->
    w = parseInt w, 10
    h = parseInt h, 10
    if faker.image[type]
      href = faker.image[type](w, h)
    else
      href = faker.image.image(w, h)
    href
  createPlacehold: (w=100, h=100) ->
    "http://placehold.it/#{w}x#{h}"
  render: ->
    <img className={ @props.classes } src={ @state.href } />

module.exports =
  FakerImage: FakerImage
  start: (elm) ->
    ImageFact = React.createFactory FakerImage
    info = elm.getAttribute 'data-faker-image'
    classes = elm.getAttribute 'class'
    elm.removeAttribute 'data-faker-image'
    elm.removeAttribute 'class'
    React.render(
      ImageFact(
        info: info
        classes: classes
      )
      elm
    )

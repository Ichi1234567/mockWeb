module.exports =
  start: (elm) ->
    repeat = elm.getAttribute 'data-faker-repeat'
    repeat = if repeat then parseInt(repeat, 10) else 1
    parentNode = elm.parentNode
    elm.removeAttribute 'data-faker-repeat'
    [1...repeat].forEach((val) ->
      newNode = elm.cloneNode(true)
      parentNode.insertBefore newNode, elm
    )


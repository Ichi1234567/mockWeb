FakerRepeat = require './repeat'
FakerImage = require './image'
FakerName = require './name'
FakerLorem = require './lorem'
FakerDate = require './date'
FakerNumber = require './number'
ArraySlice = Array.prototype.slice

repeatElms = ArraySlice.call(document.querySelectorAll '[data-faker-repeat]')
if repeatElms
  repeatElms.reverse().forEach (elm) ->
    FakerRepeat.start(elm)

imageElms = ArraySlice.call(document.querySelectorAll '[data-faker-image]')
if imageElms
  imageElms.forEach (elm) ->
    FakerImage.start(elm)

nameElms = ArraySlice.call(document.querySelectorAll '[data-faker-name]')
if nameElms
  nameElms.forEach (elm) ->
    FakerName.start(elm)

loremElms = ArraySlice.call(document.querySelectorAll '[data-faker-lorem]')
if loremElms
  loremElms.forEach (elm) ->
    FakerLorem.start(elm)

dateElms = ArraySlice.call(document.querySelectorAll '[data-faker-date]')
if dateElms
  dateElms.forEach (elm) ->
    FakerDate.start(elm)

numberElms = ArraySlice.call(document.querySelectorAll '[data-faker-number]')
if numberElms
  numberElms.forEach (elm) ->
    FakerNumber.start(elm)



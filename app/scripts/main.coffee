testText = require './reactjs/components/test'

widgetContainer = document.querySelector '#widget'
if widgetContainer
  testText.start(widgetContainer)

require './reactjs/faker/index'


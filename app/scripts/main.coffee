testText = require './reactjs/components/test'

widgetContainer = document.querySelector '#widget'
if widgetContainer
  testText.start(widgetContainer)

require './reactjs/faker/index'

abc = require './babel-test'
console.log abc
abc.bob.addFriends 'Hi'
abc.bob.printFriends()

babelReact = require './reactjs/babel-react'
babelReactNode = document.querySelector '#babel-react'
if babelReactNode
  babelReact.start(babelReactNode)

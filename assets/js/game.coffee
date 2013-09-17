ko.bindingHandlers.position =
    init: (element, value) ->
        $(element).css 'left', value().left()
        $(element).css 'top', value().top()
    update: (element, value) ->
        $(element).css 'left', value().left()
        $(element).css 'top', value().top()

lastId = 0

isPrime = (n) ->
    for x in [2..n/2]
        if n/x % 1 == 0
            return false
    true

class Space
    width = 9
    height = 9
    constructor: (@x, @y) ->
        @left = width * @x
        @top = height * @y
        @id = ++lastId
        @isOne = isPrime(@id)

class Game
    constructor: (@name) ->
        @space = []
        for y in [1..50]
            for x in [1..50]
                @space.push new Space x, y

game = new Game 'hello'

viewModel = ko.mapping.fromJS game
ko.applyBindings viewModel
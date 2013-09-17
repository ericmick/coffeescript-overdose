doctype 5
html ->
    head ->
        title '<=['
        css 'game'
    body ->
        h1 'data-bind': 'text: name'
        div 'data-bind': 'foreach: space', class: 'galaxy', ->
            div 'data-bind': 'position: {left: left, top: top}, visible: isOne, text: id', class: 'space'
        script src: '//cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js'
        script src: '//cdnjs.cloudflare.com/ajax/libs/knockout/2.3.0/knockout-min.js'
        script src: '//cdnjs.cloudflare.com/ajax/libs/knockout.mapping/2.3.5/knockout.mapping.js'
        js 'game'
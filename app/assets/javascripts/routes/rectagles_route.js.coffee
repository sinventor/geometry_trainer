GeometryTrainer.RectanglesRoute = Ember.Route.extend
  model: ->
    @get('store').findAll('rectangle')

  setupController: (controller, collection) ->
    controller.set('title', "Rectangles route")
    controller.set('content', collection)
    console.log('Perform setupController...')
    console.log(controller)
    console.log('collect')
    console.log(collection)
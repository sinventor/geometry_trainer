GeometryTrainer.IndexRoute = Ember.Route.extend
  model: ->
    @get('store').findAll('rectangle')
  setupController: (controller) ->
    #controller.set('title', 'Index')
    return
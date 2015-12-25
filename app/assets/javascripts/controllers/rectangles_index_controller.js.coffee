GeometryTrainer.RectanglesIndexController = Ember.Controller.extend
  title: "Rectangle index controller"
  uder: 'Uder chup'

  modl: ->
    [
      width: 1324
    ]
  actions:
    destroy: (object) ->
      object.destroyRecord()
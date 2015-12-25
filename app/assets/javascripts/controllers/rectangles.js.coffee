GeometryTrainer.RectanglesContrtoller = Ember.Controller.extend
  title: "Rectangles controller"

  actions:
    destroy: (object) ->
      object.destroyRecord()

      object.get('transaction').commit()
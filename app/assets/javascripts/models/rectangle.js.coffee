GeometryTrainer.Rectangle = DS.Model.extend
  width: DS.attr('number')
  height: DS.attr('number')
  fillColor: DS.attr('string')

  didCreate: ((rect) ->
     console.log(rect)).bind(@)
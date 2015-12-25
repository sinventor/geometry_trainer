# For more information see: http://emberjs.com/guides/routing/

GeometryTrainer.Router.map ()->
  @resource 'rectangles', ->
    @route 'new'
  @resource 'rectangle', path: '/rectangles/:rectangle_id', ->
    @route 'edit'


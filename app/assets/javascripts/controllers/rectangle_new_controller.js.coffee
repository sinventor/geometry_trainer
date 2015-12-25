GeometryTrainer.RectanglesNewController = Ember.Controller.extend
  title: "rectangle new controller"
  

  actions:
    submit: (controller) ->
      console.log('subnitgfgr')
      console.log(this.get('width'))
      console.log(this.get('height'))
      console.log(this.get('fillColor'))
      width = this.get('width')
      height = this.get('height')
      fillColor = this.get('fillColor')
      mod = @
      newRectangle = @get('store').createRecord 'rectangle',
        width: width
        height: height
        fillColor: fillColor
      # model = controller.get 'model'
      # model.get('transaction').commit()
      insp = @get('store')

      transitionToRectangles = ->
        console.log('successfully!!')
        mod.set('width', '')
        mod.set('height', '')
        mod.set('fillColor', '')
        mod.transitionToRoute('rectangles')
      failure = (reason) ->
        console.log(reason)
      newRectangle.save().then(transitionToRectangles).catch(failure)
      # console.log v for v of insp
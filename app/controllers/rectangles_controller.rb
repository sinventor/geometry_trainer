class RectanglesController < ApplicationController
  before_action :set_rectangle, only: [:update, :destroy]

  def index
    render json: Rectangle.all
  end

  def show
    render json: Rectangle.find(params[:id])
  end

  def create
    @rectangle = Rectangle.create(rectangle_params)
    status = @rectangle.errors.present? ? :unprocessable_entity : 200
    render json: @rectangle, status: status
  end

  def update
    ststus = @rectangle.update_attributes(rectangle_params) ? 200 : :unprocessable_entity
    render json: @rectangle, status: status
  end

  def destroy
    @rectangle.destroy
    render json: {status: 204}
  end
  
  private
  def rectangle_params
    params.require(:rectangle).permit(:width, :height, :fill_color)
  end

  def set_rectangle
    @rectangle = Rectangle.find(params[:id])
  end
end
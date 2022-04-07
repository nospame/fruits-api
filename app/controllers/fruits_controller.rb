class FruitsController < ApplicationController
  def index
    fruits = Fruit.all
    render json: fruits.as_json
  end

  def show
    fruit = Fruit.find_by(id: params[:id])
    render json: fruit.as_json
  end

  def create
    fruit = Fruit.new(
      name: params[:name],
      color: params[:color],
      family: params[:family],
      image_url: params[:image_url]
    )
    fruit.save
    render json: fruit.as_json
  end

  def update
    fruit = Fruit.find_by(id: params[:id])
    fruit.name = params[:name] || fruit.name
    fruit.color = params[:color] || fruit.color
    fruit.family = params[:family] || fruit.family
    fruit.image_url = params[:image_url] || fruit.image_url
    fruit.save
    render json: fruit.as_json
  end

  def destroy
    fruit = Fruit.find_by(id: params[:id])
    fruit.destroy
    render json: {message: "Fruit successfully destroyed."}
  end
end

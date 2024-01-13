class ListsController < ApplicationController
  before_action :set_list, only: %i[ show edit update destroy]
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def edit
  end

  def create
    @list = List.new(list_params)
  end

  def update
    if @list.update(list_params)
      redirect_to @list, notice: "List was successfully udpated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.destroy
    redirect_to list_url, notice: "List was successfully deleted"
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :overview, :poster_url, :rating)
  end
end

class DestinationsController < ApplicationController
  before_action :set_lsit
  before_action :set_destination, only: [:show, :edit, :update, :destroy]

  def index
    @destinations = @list.destinations
  end

  def new
    @destination = @list.destinations.new
    render partial: "form"
  end

  def create
    @destination = @list.destinations.new(destination_params)
    if @destinations.save
      redirect_to list_destination_path(@list, @destination)
    else
      render partial: "form"
    end
  end

  def show
  end

  def update
    if @destination.update(destination_params)
      redirect_to list_destination_path(@list, @destination)
    else
      render :edit
    end
  end

  def destroy
  end

  def edit
    render partial: "form"
  end
end

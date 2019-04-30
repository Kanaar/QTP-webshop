class ItemsController < ApplicationController
  before_action :set_item, only: [ :show, :update ]

  def index
    @items = Item.all
  end

  def show
    @item
  end

  def new
    @item = Item.new
  end

  def create
    @item = @customer.items.new(item_params)
    @item.customer = current_customer

    if @item.save
      redirect_to items_path
    else
      render "item_items/index"
    end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

private

  def set_item
    @item = Item.find(params[:id])
  end
end

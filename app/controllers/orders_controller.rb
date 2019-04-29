class OrdersController < ApplicationController
    before_action :set_order, only: [ :show, :edit, :update, :destroy ]
    before_action :set_listing, only: [:create]

    def index
      @orders = Order.where(customer: current_customer)
    end

    def new
      @order = Order.new
    end

    def create
      @order = @customer.orders.new(order_params)
      @order.customer = current_customer

      #@order.total_cost =

      if @order.save
        redirect_to orders_path
      else
        render "order_items/index"
      end
    end

    def destroy
      @order.destroy
      redirect_to orders_path
    end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def set_order_items
      @order_items = OrderItem.where(params[:order_id])
    end

    def order_params
      params.require(:order).permit(:customer_id)
    end
end

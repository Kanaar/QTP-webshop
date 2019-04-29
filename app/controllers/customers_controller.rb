class CustomersController < ApplicationController
    before_action :set_customer, only: [ :show, :update, :destroy ]
    before_action :set_company, only: [:create]

    def index
      @customers = Customer.all
    end

    def show
      @customer
    end

    def new
      @customer = Customer.new
    end

    def create
      @customer = Customer.new(customer_params)

      if @customer.save
        redirect_to customer_path
      else
        redirect_to :back
      end
    end

    def update
      @customer.update(customer_params)

      redirect_to customer_path(@customer)
    end

    def destroy
      @customer.destroy
      redirect_to companies_path
    end

  private

    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :email, :address, :phone)
    end

    def set_company
      @company = Company.where(:customer == @customer)
    end
end

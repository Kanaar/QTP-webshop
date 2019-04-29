class CompaniesController < ApplicationController
  before_action :set_company, only: [ :show, :update, :destroy ]

  def index
    @companies = Company.all
  end

  def show
    @company
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    if @company.save
      redirect_to companies_path
    else
      redirect_to :back
    end
  end

  def update
    @company.update(company_params)

    redirect_to company_path(@company)
  end

  def destroy
    @company.destroy
    redirect_to companies_path
  end

private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :corr_address, :vat_number, :bank_details)
  end
end

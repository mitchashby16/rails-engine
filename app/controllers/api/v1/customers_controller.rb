class Api::V1::CustomersController < ApplicationController
  respond_to :json

  def show
    respond_with Customer.find(params[:id])
  end

  def find
    respond_with Customer.find_by_attribute(params)
  end
end

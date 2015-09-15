class Api::V1::MerchantsController < ApplicationController
  respond_to :json

  def show
    respond_with Merchant.find(params[:id])
  end

  def find
    render :json => finder(params)
  end
end

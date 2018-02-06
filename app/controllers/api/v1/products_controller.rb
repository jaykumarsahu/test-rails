class Api::V1::ProductsController < ApplicationController
  # skip_before_action :authenticate_request!

  def index
    products = Product.json_data
    if products.present?
      render json: { status: "success", products: products }
    else
      render json: { status: "failed", error: "Products are not found." }, status: :unprocessable_entity
    end
  end


end

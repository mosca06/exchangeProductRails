class ProductsController < ApplicationController
  def index
    # query = "
    #         SELECT *
    #         FROM product
    #         ;
    # "
    # @result = ActiveRecord::Base.connection.execute(
    #   ApplicationRecord.sanitize_sql_array(
    #     [ query,  opt: nil ]
    #   )
    # )
    # @result = @result.map { |item| Product.new(item) }
    # @products = @result

    # @products = Product.all
    
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      return redirect_to @product
    end
    render :new
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      return redirect_to @product
    end
    render :edit
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end

  def fetch_product
  end

end
class ProductsSuppliersController < ApplicationController
  def index
    @products_suppliers = ProductsSupplier.all
  end

  def new
    @products = Product.all
    @suppliers = Supplier.all
    # @options = ::FetchOptionsQuery.call
    @products_supplier = ProductsSupplier.new
  end

  def create
    @products_supplier = ProductsSupplier.new(products_supplier_params)
    return redirect_to @products_supplier if @products_supplier.save

    render :new
  end

  def show
    @products_supplier = ProductsSupplier.find(params[:id])
  end

  private

  def products_supplier_params
    params.require(:products_supplier).permit(:product_id, :supplier_id)
  end
end

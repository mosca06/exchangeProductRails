class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @options = ::FetchItemsOptionsQuery.call
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    return redirect_to @item if @item.save

    render :new
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:products_supplier_id, :store_id)
  end
end

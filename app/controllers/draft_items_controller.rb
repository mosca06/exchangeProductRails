class DraftItemsController < ApplicationController
  def index
    @draft_items = DraftItem.all
  end

  def new
    @options = ::FetchDraftItemsOptionsQuery.call
    @draft_item = DraftItem.new
  end

  def create
    @draft_item = DraftItem.new(draft_item_params)
    return redirect_to @draft_item if @draft_item.save

    render :new
  end

  def show
    @draft_item = DraftItem.find(params[:id])
  end

  private

  def draft_item_params
    params.require(:draft_item).permit(:item_id, :draft_order_id)
  end
end

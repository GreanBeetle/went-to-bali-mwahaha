class OrderItemsController < ApplicationController

  def create
    @order = current_order
    amount = item_params[:quantity].to_i
    id = item_params[:product_id]
    @item = @order.order_items.find_or_initialize_by(product_id: id)
    @item.quantity = @item.quantity.to_i + amount
    @item.save
    @order.save
    session[:order_id] = @order.id
    respond_to do |format|
      format.html { redirect_to players_path }
      format.js
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def edit
    @item = @order.order_items.find(params[:id])

  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js
    end
  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end

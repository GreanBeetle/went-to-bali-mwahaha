class ProductsController < ApplicationController
  before_filter :authorize, except: [:index, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def new
    @product = Product.new
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
    else
      render :new
    end
  end


  def show
    @product = Product.find(params[:id])
    render :show
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to new_product_path
    else
      render :edit 
    end
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end

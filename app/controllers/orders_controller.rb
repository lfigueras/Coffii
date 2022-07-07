class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @products = Product.all
  end

  def create
    @order = Order.new(order_params)
    @order.user_id = current_user.id
    if @order.save
     redirect_to orders_path
     else
        render 'new'
     end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url notice: 'Order was successfully deleted.' }
      format.json { head :no_content }
    end
  end
  
  private
  def order_params
    params.require(:order).permit(:name)
  end


end

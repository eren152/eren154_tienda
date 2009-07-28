class StoreController < ApplicationController
  include MinimalCart
  minimal_cart

  def index
     @articulos = Articulo.find_products_for_sale
     @cart = find_cart
  end

 def add_to_cart
    p = Articulo.find(params[:id])
    @cart = find_cart
    @cart.add_product(p)
    redirect_to_index
    rescue ActiveRecord::RecordNotFound
    logger.error("Attempt to access invalid product #{params[:id]}" )
    flash[:notice] = "Invalid product"
    redirect_to :action => 'index'
  end

 def empty_cart
    session[:cart] = nil
    flash[:notice] = "Your cart is currently empty"
    redirect_to :action => 'index'
  end

  private
  def find_cart
    session[:cart] ||= Cart.new
  end

  def redirect_to_index(msg = nil)
   flash[:notice] = msg if msg
   redirect_to :action => 'index'
  end

  def comprar
      @cart = find_cart
  end
  
end

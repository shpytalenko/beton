class WelcomeController < ApplicationController
  def main
  end
  
  def catalog
    if params[:category_id].present? 
      @products = Product.all
    else
      @products = Product.all
    end
  end
  
  def portfolio
  end
  
  def delivery
  end
  
  def contact_us
  end

  def about
  end
end

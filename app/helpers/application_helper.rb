module ApplicationHelper

	def total_quantity
		@total_quant = 0
		current_user.cart.products.each do |product|
      @total_quant += product.quantity.to_s.to_d
    end 
    @total_quant
  end
end

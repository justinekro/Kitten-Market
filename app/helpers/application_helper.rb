module ApplicationHelper

	def total_quantity
		@total = 0
		current_user.cart.products.each do |product|
      @total += product.quantity.to_s.to_d
    end 
    @total
  end

end

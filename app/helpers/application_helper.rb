module ApplicationHelper

	def total_quantity
		@total = 0
		current_user.cart.items.each do |item|
      @total += item.quantity
    end 
    @total
  end
end

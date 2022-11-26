class OrdersController < ApplicationController
	def get_order
		@data=ProductInformation::OrderService.get_order
		render :json =>  @data
	end

	def new_order
		@data=ProductInformation::OrderService.new_order
	end
	
	def edit_order
		@data=ProductInformation::OrderService.edit_order(order_id)
	end

	def update_order
		@data=ProductInformation::OrderService.update_order(order_id,params)
	end

	def create_order
		@data = ProductInformation::OrderService.create_order(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_order
		@data=ProductInformation::OrderService.delete_order(order_id)
	end

	private
	
	def params
		params.permit(:user_id, :total, :cart_id, :payment_id, :quantity)
	end
end

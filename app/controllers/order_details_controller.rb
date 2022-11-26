class OrderDetailsController < ApplicationController
	def get_order_detail
		@data=ProductInformation::OrderDetailService.get_order_detail
		render :json =>  @data
	end

	def new_order_detail
		@data=ProductInformation::OrderDetailService.new_order_detail
	end
	
	def edit_order_detail
		@data=ProductInformation::OrderDetailService.edit_order_detail(order_detail_id)
	end

	def update_order_detail
		@data=ProductInformation::OrderDetailService.update_order_detail(order_detail_id,params)
	end

	def create_order_detail
		@data = ProductInformation::OrderDetailService.create_order_detail(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_order_detail
		@data=ProductInformation::OrderDetailService.delete_order_detail(order_detail_id)
	end

	private
	
	def params
		params.permit(:order_id, :line_item_id, :quantity, :applied_discount_id)
	end
end

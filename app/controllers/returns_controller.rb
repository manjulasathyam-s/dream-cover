class ReturnsController < ApplicationController
	def update_return
		@data=ProductInformation::ReturnService.update_user(return_id,params)
	end

	def create_return
		@data = ProductInformation::ReturnService.create_user(params)
		if @data.save
			puts "Saved"
		end
	end

	private
	
	def params
		params.permit(:delivery_id, :user_id, :product_acceptable, :refund_inititation, :product_received, :refund_amount)
	end
end

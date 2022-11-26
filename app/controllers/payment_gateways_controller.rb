class PaymentGatewaysController < ApplicationController
	def get_payment_gateway
		@data=ProductInformation::PaymentGatewayService.get_payment_gateway
		render :json =>  @data
	end

	def new_payment_gateway
		@data=ProductInformation::PaymentGatewayService.new_payment_gateway
	end
	
	def edit_payment_gateway
		@data=ProductInformation::PaymentGatewayService.edit_payment_gateway(payment_gateway_id)
	end

	def update_payment_gateway
		@data=ProductInformation::PaymentGatewayService.update_payment_gateway(payment_gateway_id,params)
	end

	def create_payment_gateway
		@data = ProductInformation::PaymentGatewayService.create_payment_gateway(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_payment_gateway
		@data=ProductInformation::PaymentGatewayService.delete_payment_gateway(payment_gateway_id)
	end

	private
	
	def params
		params.permit(:name, :url)
	end
end

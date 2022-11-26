class DeliveryStatusController < ApplicationController
	def get_delivery_partner
		@data=ProductInformation::DeliveryStatusService.get_delivery_status
		render :json =>  @data
	end

	def new_delivery_partner
		@data=ProductInformation::DeliveryStatusService.new_delivery_status
	end
	
	def edit_delivery_partner
		@data=ProductInformation::DeliveryStatusService.edit_delivery_status(delivery_status_id)
	end

	def update_delivery_partner
		@data=ProductInformation::DeliveryStatusService.update_delivery_status(delivery_status_id,params)
	end

	def create_delivery_partner
		@data = ProductInformation::DeliveryStatusService.create_delivery_status(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_delivery_partner
		@data=ProductInformation::DeliveryStatusService.delete_delivery_status(delivery_status_id)
	end

	private
	
	def params
		params.permit(:name, :description)
	end
end

class DeliveryLogsController < ApplicationController
	def get_delivery_partner
		@data=ProductInformation::DeliveryLogsService.get_delivery_logs
		render :json =>  @data
	end

	def new_delivery_partner
		@data=ProductInformation::DeliveryLogsService.new_delivery_logs
	end
	
	def edit_delivery_partner
		@data=ProductInformation::DeliveryLogsService.edit_delivery_logs(delivery_logs_id)
	end

	def update_delivery_partner
		@data=ProductInformation::DeliveryLogsService.update_delivery_logs(delivery_logs_id,params)
	end

	def create_delivery_partner
		@data = ProductInformation::DeliveryLogsService.create_delivery_logs(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_delivery_partner
		@data=ProductInformation::DeliveryLogsService.delete_delivery_logs(delivery_logs_id)
	end

	private
	
	def params
		params.permit(:name, :city)
	end
end

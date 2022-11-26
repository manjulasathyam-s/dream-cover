class DeliveryPartnersController < ApplicationController
	def get_delivery_partner
		@data=ProductInformation::DeliveryPartnerService.get_delivery_partner
		render :json =>  @data
	end

	def new_delivery_partner
		@data=ProductInformation::DeliveryPartnerService.new_delivery_partner
	end
	
	def edit_delivery_partner
		@data=ProductInformation::DeliveryPartnerService.edit_delivery_partner(delivery_partner_id)
	end

	def update_delivery_partner
		@data=ProductInformation::DeliveryPartnerService.update_delivery_partner(delivery_partner_id,params)
	end

	def create_delivery_partner
		@data = ProductInformation::DeliveryPartnerService.create_delivery_partner(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_delivery_partner
		@data=ProductInformation::DeliveryPartnerService.delete_delivery_partner(delivery_partner_id)
	end

	private
	
	def params
		params.permit(:name, :city)
	end
end

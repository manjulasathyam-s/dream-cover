class DiscountsController < ApplicationController
	def get_discount
		@data=ProductInformation::DiscountService.get_discount
		render :json =>  @data
	end

	def new_discount
		@data=ProductInformation::DiscountService.new_discount
	end
	
	def edit_discount
		@data=ProductInformation::DiscountService.edit_discount(discount_id)
	end

	def update_discount
		@data=ProductInformation::DiscountService.update_discount(discount_id,params)
	end

	def create_discount
		@data = ProductInformation::DiscountService.create_discount(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_discount
		@data=ProductInformation::DiscountService.delete_discount(discount_id)
	end

	private
	
	def params
		params.permit(:name, :description, :discount_percent)
	end
end

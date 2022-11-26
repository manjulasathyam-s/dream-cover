class ProductDiscountsController < ApplicationController
	def get_product_discount
		@data=ProductInformation::ProductDiscountService.get_product_discount
		render :json =>  @data
	end

	def new_product_discount
		@data=ProductInformation::ProductDiscountService.new_product_discount
	end
	
	def edit_product_discount
		@data=ProductInformation::ProductDiscountService.edit_product_discount(product_discount_id)
	end

	def update_product_discount
		@data=ProductInformation::ProductDiscountService.update_product_discount(product_discount_id,params)
	end

	def create_product_discount
		@data = ProductInformation::ProductDiscountService.create_product_discount(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_product_discount
		@data=ProductInformation::ProductDiscountService.delete_product_discount(product_discount_id)
	end

	private
	
	def params
		params.permit(:discount_id, :product_id)
	end
end

class ProductFeedacksController < ApplicationController
	def get_product_feedback
		@data=ProductInformation::ProductFeedbackService.get_product_feedback
		render :json =>  @data
	end

	def new_product_feedback
		@data=ProductInformation::ProductFeedbackService.new_product_feedback
	end
	
	def edit_product_feedback
		@data=ProductInformation::ProductFeedbackService.edit_product_feedback(product_feedback_id)
	end

	def update_product_feedback
		@data=ProductInformation::ProductFeedbackService.update_product_feedback(product_feedback_id,params)
	end

	def create_product_feedback
		@data = ProductInformation::ProductFeedbackService.create_product_feedback(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_product_feedback
		@data=ProductInformation::ProductFeedbackService.delete_product_feedback(product_feedback_id)
	end

	private
	
	def params
		params.permit(:product_id, :rating, :description)
	end
end

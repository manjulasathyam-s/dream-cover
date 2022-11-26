class SubCategoriesController < ApplicationController
	def get_sub_category
		@data=ProductInformation::SubCategoryService.get_sub_category
		render :json =>  @data
	end

	def new_sub_category
		@data=ProductInformation::SubCategoryService.new_sub_category
	end
	
	def edit_sub_category
		@data=ProductInformation::SubCategoryService.edit_sub_category(sub_category_id)
	end

	def update_sub_category
		@data=ProductInformation::SubCategoryService.update_sub_category(sub_category_id,params)
	end

	def create_sub_category
		@data = ProductInformation::SubCategoryService.create_sub_category(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_sub_category
		@data=ProductInformation::SubCategoryService.delete_sub_category(sub_category_id)
	end

	private
	
	def params
		params.permit(:sub_category_name, :description)
	end
end

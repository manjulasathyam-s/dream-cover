class CategoriesController < ApplicationController
	def get_category
		@data=ProductInformation::CategoryService.get_category
		render :json =>  @data
	end

	def new_category
		@data=ProductInformation::CategoryService.new_category
	end
	
	def edit_category
		@data=ProductInformation::CategoryService.edit_category(category_id)
	end

	def update_category
		@data=ProductInformation::CategoryService.update_category(category_id,params)
	end

	def create_category
		@data = ProductInformation::CategoryService.create_category(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_category
		@data=ProductInformation::CategoryService.delete_category(category_id)
	end

	private
	
	def params
		params.permit(:category_name, :description, :sub_category_id)
	end
end

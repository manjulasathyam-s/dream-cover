class CountriesController < ApplicationController
	def get_country
		@data=ProductInformation::CountryService.get_country
		render :json =>  @data
	end

	def new_country
		@data=ProductInformation::CountryService.new_country
	end
	
	def edit_country
		@data=ProductInformation::CountryService.edit_country(country_id)
	end

	def update_country
		@data=ProductInformation::CountryService.update_country(country_id,params)
	end

	def create_country
		@data = ProductInformation::CountryService.create_country(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_country
		@data=ProductInformation::CountryService.delete_country(country_id)
	end

	private
	
	def params
		params.permit(:name)
	end
end

class ProductStocksController < ApplicationController
	def get_product_stock
		@data=ProductInformation::ProductStockService.get_product_stock
		render :json =>  @data
	end

	def new_product_stock
		@data=ProductInformation::ProductStockService.new_product_stock
	end
	
	def edit_product_stock
		@data=ProductInformation::ProductStockService.edit_product_stock(product_stock_id)
	end

	def update_product_stock
		@data=ProductInformation::ProductStockService.update_product_stock(product_stock_id,params)
	end

	def create_product_stock
		@data = ProductInformation::ProductStockService.create_product_stock(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_product_stock
		@data=ProductInformation::ProductStockService.delete_product_stock(product_stock_id)
	end

	private
	
	def params
		params.permit(:total_stock, :unit_price, :total_price)
	end
end

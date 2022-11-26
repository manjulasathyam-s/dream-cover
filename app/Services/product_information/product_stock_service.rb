module ProductInformation
	class ProductStockService

		def self.get_product_stock
			data = ProductStock.all
		end

		def self.new_product_stock
			data = ProductStock.new 
		end

		def self.edit_product_stock(product_stock_id)
			data = ProductStock.find(product_stock_id)
		end

		def self.update_product_stock(product_stock_id, params)
			data = ProductStock.find(product_stock_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_product_stock(params)
			data = ProductStock.create(params)
		end

		def self.delete_product_stock(product_stock_id)
			data = ProductStock.find(product_stock_id)
			data.update(is_active: false)
		end
	end
end
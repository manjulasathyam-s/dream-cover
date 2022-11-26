module ProductInformation
	class ProductDiscountService

		def self.get_product_discount
			data = ProductDiscount.all
		end

		def self.new_product_discount
			data = ProductDiscount.new 
		end

		def self.edit_product_discount(product_discount_id)
			data = ProductDiscount.find(product_discount_id)
		end

		def self.update_product_discount(product_discount_id, params)
			data = ProductDiscount.find(product_discount_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_product_discount(params)
			data = ProductDiscount.create(params)
		end

		def self.delete_product_discount(product_discount_id)
			data = ProductDiscount.find(product_discount_id)
			data.update(is_active: false)
		end
	end
end
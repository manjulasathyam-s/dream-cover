module ProductInformation
	class DiscountService

		def self.get_discount
			data = Discount.all
		end

		def self.new_discount
			data = Discount.new 
		end

		def self.edit_discount(discount_id)
			data = Discount.find(discount_id)
		end

		def self.update_discount(discount_id, params)
			data = Discount.find(discount_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_discount(params)
			data = Discount.create(params)
		end

		def self.delete_discount(discount_id)
			data = Discount.find(discount_id)
			data.update(is_active: false)
		end
	end
end
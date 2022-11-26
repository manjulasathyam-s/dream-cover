module ProductInformation
	class OrderService

		def self.get_order
			data = Order.all
		end

		def self.new_order
			data = Order.new 
		end

		def self.edit_order(order_id)
			data = Order.find(order_id)
		end

		def self.update_order(order_id, params)
			data = Order.find(order_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_order(params)
			data = Order.create(params)
		end

		def self.delete_order(order_id)
			data = Order.find(order_id)
			data.update(is_active: false)
		end
	end
end
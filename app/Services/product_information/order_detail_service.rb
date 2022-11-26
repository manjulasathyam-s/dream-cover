module ProductInformation
	class OrderDetailService

		def self.get_order_detail
			data = OrderDetail.all
		end

		def self.new_order_detail
			data = OrderDetail.new 
		end

		def self.edit_order_detail(order_detail_id)
			data = OrderDetail.find(order_detail_id)
		end

		def self.update_order_detail(order_detail_id, params)
			data = OrderDetail.find(order_detail_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_order_detail(params)
			data = OrderDetail.create(params)
		end

		def self.delete_order_detail(order_detail_id)
			data = OrderDetail.find(order_detail_id)
			data.update(is_active: false)
		end
	end
end
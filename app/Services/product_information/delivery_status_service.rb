module ProductInformation
	class DeliveryStatusService

		def self.get_delivery_status
			data = DeliveryStatus.all
		end

		def self.new_delivery_status
			data = DeliveryStatus.new 
		end

		def self.edit_delivery_status(delivery_status_id)
			data = DeliveryStatus.find(district_id)
		end

		def self.update_delivery_status(delivery_status_id, params)
			data = DeliveryStatus.find(delivery_status_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_delivery_status(params)
			data = DeliveryStatus.create(params)
		end

		def self.delete_delivery_status(delivery_status_id)
			data = DeliveryStatus.find(delivery_status_id)
			data.update(is_active: false)
		end
	end
end

module ProductInformation
	class DeliveryLogsService

		def self.get_delivery_logs
			data = DeliveryLog.all
		end

		def self.new_delivery_logs
			data = DeliveryLog.new 
		end

		def self.edit_delivery_logs(delivery_logs_id)
			data = DeliveryLog.find(cart_id)
		end

		def self.update_delivery_logs(delivery_logs_id, params)
			data = DeliveryLog.find(delivery_logs_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_delivery_logs(params)
			data = DeliveryLog.create(cart_params)
		end

		def self.delete_delivery_logs(delivery_logs_id)
			data = DeliveryLog.find(delivery_logs_id)
			data.update(is_active: false)
		end

        private
	
        def params
            params.permit(:delivery_id, :intial_value, :final_value, :reason)
        end
	end
end

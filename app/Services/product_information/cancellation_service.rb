module ProductInformation
	class CancellationService

		def self.update_cancellation(cancellation_id, params)
			data = Cancellation.find(cancellation_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_cancellation(params)
			data = Cancellation.create(params)
		end

		def self.delete_cancellation(cancellation_id)
			data = Cancellation.find(cancellation_id)
			data.update(is_active: false)
		end
	end
end
module ProductInformation
	class ReturnLogService

		def self.update_return_log(return_log_id, params)
			data = ReturnLog.find(return_log_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_return_log(params)
			data = ReturnLog.create(params)
		end
	end
end
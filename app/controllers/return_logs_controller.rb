class ReturnLogsController < ApplicationController

	def update_return_log
		@data=ProductInformation::ReturnLogService.update_return_log(return_log_id,params)
	end

	def create_return_log
		@data = ProductInformation::ReturnLogService.create_return_log(params)
		if @data.save
			puts "Saved"
		end
	end

	private
	
	def params
		params.permit(:return_id, :initial_value, :final_value, :reason)
	end
end

class OrderLogsController < ApplicationController
	def get_order_logs
		@data=ProductInformation::OrderLogService.get_order_logs
		render :json =>  @data
	end

	def new_order_logs
		@data=ProductInformation::OrderLogService.new_order_logs
	end
	
	def edit_order_logs
		@data=ProductInformation::OrderLogService.edit_order_logs(order_log_id)
	end

	def update_order_logs
		@data=ProductInformation::OrderLogService.update_order_logs(order_log_id,params)
	end

	def create_order_logs
		@data = ProductInformation::OrderLogService.create_order_logs(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_order_logs
		@data=ProductInformation::OrderLogService.delete_order_logs(order_log_id)
	end

	private
	
	def params
		params.permit(:order_id, :initial_value, :final_value, :reason)
	end
end

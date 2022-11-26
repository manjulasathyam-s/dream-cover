class CancellationsController < ApplicationController
	
	def update_cancellation
		@data=ProductInformation::CancellationService.update_cancellation(cancellation_id,params)
	end

	def create_cancellation
		@data = ProductInformation::CancellationService.create_cancellation(params)
		if @data.save
			puts "Saved"
		end
	end

	def delete_cancellation
		@data=ProductInformation::CancellationService.delete_cancellation(cancellation_id)
	end

	private
	
	def params
		params.permit(:date, :payment_id, :user_id, :checkout_id)
	end
end

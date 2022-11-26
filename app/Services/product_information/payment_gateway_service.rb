module ProductInformation
	class PaymentGatewayService

		def self.get_payment_gateway
			data = PaymenyGateway.all
		end

		def self.new_payment_gateway
			data = PaymenyGateway.new 
		end

		def self.edit_payment_gateway(payment_gateway_id)
			data = PaymenyGateway.find(payment_gateway_id)
		end

		def self.update_payment_gateway(payment_gateway_id, params)
			data = PaymenyGateway.find(payment_gateway_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_payment_gateway(params)
			data = PaymenyGateway.create(params)
		end

		def self.delete_payment_gateway(payment_gateway_id)
			data = PaymenyGateway.find(payment_gateway_id)
			data.update(is_active: false)
		end
	end
end
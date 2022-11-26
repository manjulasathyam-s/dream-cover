module ProductInformation
	class DeliveryPartnerService

		def self.get_delivery_partner
			data = DeliveryPartner.all
		end

		def self.new_delivery_partner
			data = DeliveryPartner.new 
		end

		def self.edit_delivery_partnert(delivery_partner_id)
			data = DeliveryPartner.find(district_id)
		end

		def self.update_delivery_partner(delivery_partner_id, params)
			data = DeliveryPartner.find(delivery_partner_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_delivery_partner(params)
			data = DeliveryPartner.create(params)
		end

		def self.delete_delivery_partner(delivery_partner_id)
			data = DeliveryPartner.find(delivery_partner_id)
			data.update(is_active: false)
		end
	end
end

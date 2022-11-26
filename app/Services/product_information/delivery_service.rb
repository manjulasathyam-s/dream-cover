module ProductInformation
	class CountryService

		def self.get_delivery
			data = Delivery.all
		end

		def self.create_country(params)
			data = Delivery.create(params)
		end

	end
end
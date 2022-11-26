module ProductInformation
	class CountryService

		def self.get_country
			data = Country.all
		end

		def self.new_country
			data = Country.new 
		end

		def self.edit_country(country_id)
			data = Country.find(country_id)
		end

		def self.update_country(country_id, params)
			data = Country.find(country_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_country(params)
			data = Country.create(params)
		end

		def self.delete_country(country_id)
			data = Country.find(country_id)
			data.update(is_active: false)
		end
	end
end

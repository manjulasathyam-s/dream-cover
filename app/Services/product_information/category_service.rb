module ProductInformation
	class CategoryService

		def self.get_category
			data = Category.all
		end

		def self.new_category
			data = Category.new 
		end

		def self.edit_category(category_id)
			data = Category.find(category_id)
		end

		def self.update_category(category_id, params)
			data = Category.find(category_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_category(params)
			data = Category.create(params)
		end

		def self.delete_category(category_id)
			data = Category.find(category_id)
			data.update(is_active: false)
		end
	end
end 
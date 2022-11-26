module ProductInformation
	class SubCategoryService

		def self.get_sub_category
			data = SubCategory.all
		end

		def self.new_sub_category
			data = SubCategory.new 
		end

		def self.edit_sub_category(sub_category_id)
			data = SubCategory.find(sub_category_id)
		end

		def self.update_sub_category(sub_category_id, params)
			data = SubCategory.find(sub_category_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_sub_category(params)
			data = SubCategory.create(params)
		end

		def self.delete_sub_category(sub_category_id)
			data = SubCategory.find(sub_category_id)
			data.update(is_active: false)
		end
	end
end
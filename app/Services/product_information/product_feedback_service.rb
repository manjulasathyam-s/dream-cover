module ProductInformation
	class ProductFeedbackService

		def self.get_product_feedback
			data = ProductFeedback.all
		end

		def self.new_product_feedback
			data = ProductFeedback.new 
		end

		def self.edit_product_feedback(product_feedback_id)
			data = ProductFeedback.find(product_feedback_id)
		end

		def self.update_product_feedback(product_feedback_id, params)
			data = ProductFeedback.find(product_feedback_id)
			if data.update
				return true
			else
				return false
			end
		end

		def self.create_product_feedback(params)
			data = ProductFeedback.create(params)
		end

		def self.delete_product_feedback(product_feedback_id)
			data = ProductFeedback.find(product_feedback_id)
			data.update(is_active: false)
		end
	end
end
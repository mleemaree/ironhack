module ApplicationHelper

	def flash_message
		display_message(:alert) || display_message(:notice)
	end

	private
	def display_message(type)
		if flash[type]
			content_tag :div, class: type do
				content_tag :span do
					flash[type]
				end
			end
		end
	end


end

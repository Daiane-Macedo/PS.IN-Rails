module ApplicationHelper
	def render_title
	  return @title if defined?(@title)
	  "Plataformas"
	end
end

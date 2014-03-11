class StaticPagesController < ApplicationController
	def home
	end

	def contact
	end

	def about
		@leftImg1 = image_tag("about/moon_over_buffalo3.jpg", alt: "moonOverBuffalo", size: "126x128")
	end
end

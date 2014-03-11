require 'spec_helper'

describe "StaticPages" do

	subject{page}

	shared_examples_for "All pages" do
		it { should have_title(full_title(page_title)) }
	end

	describe "Home Page" do
		before {visit root_path}
		let(:page_title) {''}

		it_should_behave_like 'All pages'
	end

	describe "Contact Page" do
		before {visit contact_path}
		let(:page_title) {'Contact'}

		it_should_behave_like 'All pages'
	end
end

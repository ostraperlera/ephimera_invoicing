class AdminController < ApplicationController
  before_filter :authenticate_user!

	before_filter do
		redirect_to root_path unless current_user && current_user.admin?
	end

	def home
		@companies = Company.last(10)
		@users = User.last(10)
		@invoices = Invoice.last(10)
  end

	
end

class Admin::CompaniesController < ApplicationController
	before_action :set_company, only: [:show, :edit, :update, :destroy]
	
	def index
		@companies = Company.all
	end

	def show
	end

	def new
		@company = Company.new
	end

	def edit
	end

	def create
		@company = Company.new(company_params)
			if @company.save
				redirect_to admin_path, notice: 'company was created successfully.'
			else
				render :new
			end
	end
	
	def update
			if @company.update(company_params)
				redirect_to @company, notice: 'company was created successfully.'
			else
				render :edit
			end
	end

	def destroy
		@company.destroy
			redirect_to admin_path
	end
	
	private
	def set_company 
		@company = Company.find(params[:id])
	end

	def company_params
		params.require(:company).permit(:name, :address, :postcode, :city, :country, :phome, :vat_id, :user_id)
	end
end


class Company < ActiveRecord::Base
		belongs_to :user
		has_many :invoices

		validates :name, presence: true, length: { in: 3..40 }
		validates :vat_id, presence: true, length: { in: 3..20 }, uniqueness: { message: "This VAT ID is already in use." }
		validates :address, presence: true, length: { in: 3..100 }
		validates :postcode, presence: true, length: { in: 3..16 }
		validates :phone, presence: true, length: { in: 6..12 }
		validates :city, presence: true, length: { in: 3..40 }
		validates :country, presence: true
end

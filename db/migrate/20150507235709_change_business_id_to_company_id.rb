class ChangeBusinessIdToCompanyId < ActiveRecord::Migration
  def change
		rename_column :invoices, :business_id, :company_id
  end
end

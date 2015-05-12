class AddBusinessIdToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :business_id, :integer
  end
end

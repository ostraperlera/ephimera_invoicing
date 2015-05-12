class AddAttachmentInvoiceDocToInvoices < ActiveRecord::Migration
  def self.up
    change_table :invoices do |t|
      t.attachment :invoice_doc
    end
  end

  def self.down
    remove_attachment :invoices, :invoice_doc
  end
end

class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :number
      t.string :purchase_order
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :subtotal1
      t.string :subtotal2
      t.string :subtotal3
      t.string :total
      t.string :vat
      t.string :irpf

      t.timestamps
    end
  end
end

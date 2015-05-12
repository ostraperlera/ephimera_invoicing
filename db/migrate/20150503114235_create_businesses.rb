class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :postcode
      t.string :city
      t.string :country
      t.string :phone
      t.string :vat_id

      t.timestamps
    end
  end
end

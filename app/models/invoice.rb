class Invoice < ActiveRecord::Base
			belongs_to :company
			delegate :user, :to => :company, :allow_nil => false

			validates :number, presence: true, length: { in: 1..20 }
	    validates :purchase_order, presence: true, length: { in: 3..20 }
			validates :date, presence: true, length: { in: 6..10 }
			validates :item1, presence: true, length: { in: 3..30 }
			validates :subtotal1, presence: true, length: { in: 1..9 }
			validates :vat, presence: true, length: { in: 1..6 }
			validates :irpf, presence: true, length: { in: 1..6 }
			validates :total, presence: true, length: { in: 1..9 }

			has_attached_file :invoice_doc
			validates_attachment :invoice_doc, :presence => true,
			:size => { :in => 0..100.kilobytes }
			validates_attachment_file_name :invoice_doc, :matches => [/jpe?g\Z/, /doc\Z/, /pdf\Z/]
end

json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :number, :purchase_order, :item1, :item2, :item3, :subtotal1, :subtotal2, :subtotal3, :total, :vat, :irpf
  json.url invoice_url(invoice, format: :json)
end

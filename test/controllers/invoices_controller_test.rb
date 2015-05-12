require 'test_helper'

class InvoicesControllerTest < ActionController::TestCase
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post :create, invoice: { irpf: @invoice.irpf, item1: @invoice.item1, item2: @invoice.item2, item3: @invoice.item3, number: @invoice.number, purchase_order: @invoice.purchase_order, subtotal1: @invoice.subtotal1, subtotal2: @invoice.subtotal2, subtotal3: @invoice.subtotal3, total: @invoice.total, vat: @invoice.vat, company_id: @invoice.company_id }
    end

    assert_redirected_to dashboard_path
  end

  test "should show invoice" do
    get :show, id: @invoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invoice
    assert_response :success
  end

  test "should update invoice" do
    patch :update, id: @invoice, invoice: { irpf: @invoice.irpf, item1: @invoice.item1, item2: @invoice.item2, item3: @invoice.item3, number: @invoice.number, purchase_order: @invoice.purchase_order, subtotal1: @invoice.subtotal1, subtotal2: @invoice.subtotal2, subtotal3: @invoice.subtotal3, total: @invoice.total, vat: @invoice.vat }
    assert_redirected_to invoice_path(assigns(:invoice))
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete :destroy, id: @invoice
    end

    assert_redirected_to invoices_path
  end
end

require "test_helper"

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url, as: :json
    assert_response :success
  end

  test "should create invoice" do
    assert_difference("Invoice.count") do
      post invoices_url, params: { invoice: { amount_paid: @invoice.amount_paid, expiration_date: @invoice.expiration_date, payment_date: @invoice.payment_date, plan_id: @invoice.plan_id, status: @invoice.status, student_id: @invoice.student_id, value: @invoice.value } }, as: :json
    end

    assert_response :created
  end

  test "should show invoice" do
    get invoice_url(@invoice), as: :json
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { amount_paid: @invoice.amount_paid, expiration_date: @invoice.expiration_date, payment_date: @invoice.payment_date, plan_id: @invoice.plan_id, status: @invoice.status, student_id: @invoice.student_id, value: @invoice.value } }, as: :json
    assert_response :success
  end

  test "should destroy invoice" do
    assert_difference("Invoice.count", -1) do
      delete invoice_url(@invoice), as: :json
    end

    assert_response :no_content
  end
end

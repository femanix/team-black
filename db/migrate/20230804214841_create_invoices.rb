class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.references :student, null: false, foreign_key: true
      t.integer :value
      t.integer :amount_paid
      t.date :expiration_date
      t.date :payment_date
      t.integer :status
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end

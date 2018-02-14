class CreatePaymentHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_histories do |t|
      t.decimal :amount
      t.belongs_to :user
      t.date :paid_date

      t.timestamps
    end
  end
end

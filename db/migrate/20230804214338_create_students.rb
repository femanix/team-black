class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth_date
      t.integer :cellphone, limit: 8
      t.integer :phone, limit: 8
      t.integer :cpf, limit: 8
      t.integer :rg, limit: 8
      t.string :email
      t.string :gender
      t.integer :cep, limit: 8
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end

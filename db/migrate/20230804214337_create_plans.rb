class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.integer :value
      t.string :description
      t.references :modality, null: false, foreign_key: true

      t.timestamps
    end
  end
end

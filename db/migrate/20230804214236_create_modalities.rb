class CreateModalities < ActiveRecord::Migration[7.0]
  def change
    create_table :modalities do |t|
      t.text :description

      t.timestamps
    end
  end
end

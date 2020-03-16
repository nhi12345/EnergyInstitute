class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :enterprise, foreign_key: true
      t.string :name
      t.timestamps
    end
  end
end

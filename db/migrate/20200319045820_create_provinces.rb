class CreateProvinces < ActiveRecord::Migration[6.0]
  def change
    create_table :provinces do |t|
      t.string :code
      t.string :name
      t.timestamps
    end
  end
end
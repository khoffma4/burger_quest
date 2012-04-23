class CreateBurgers < ActiveRecord::Migration
  def change
    create_table :burgers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

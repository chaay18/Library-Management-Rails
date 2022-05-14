class CreateOrdinateurs < ActiveRecord::Migration[6.1]
  def change
    create_table :ordinateurs do |t|
      t.string :marque
      t.integer :nbr_copies

      t.timestamps
    end
  end
end

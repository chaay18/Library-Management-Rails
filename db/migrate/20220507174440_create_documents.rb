class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :titre
      t.integer :nombre_copies

      t.timestamps
    end
  end
end

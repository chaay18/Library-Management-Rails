class CreateEmpruntDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :emprunt_docs do |t|
      t.references :adherent, null: false, foreign_key: true
      t.references :document, null: false, foreign_key: true

      t.timestamps
    end
  end
end

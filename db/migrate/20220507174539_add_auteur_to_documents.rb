class AddAuteurToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_reference :documents, :auteur, foreign_key: true
  end
end

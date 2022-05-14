class AddEmpruntDocToDocuments < ActiveRecord::Migration[6.1]
  def change
    add_reference :documents, :emprunt_doc, foreign_key: true
  end
end

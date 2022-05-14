class Document < ApplicationRecord
	belongs_to :auteur
	has_many :emprunt_docs, dependent: :delete_all
	#has_many :adherents, through: :emprunt_docs

	def self.search(search)
    if search
      document_resultat = Document.find_by(id: search)
        if document_resultat
          self.where(id: document_resultat)
        else
          @document = Document.all
        end
    else
      @document = Document.all
    end
  end

end

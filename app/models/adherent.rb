class Adherent < ApplicationRecord
  has_many :emprunt_docs, foreign_key: "adherent_id", dependent: :destroy
  has_many :documents, through: :emprunt_docs
  has_one :empruntordi , foreign_key: "adherent_id", dependent: :destroy
  has_one :ordinateur, through: :empruntordi


  def self.search(search)
    if search
      adherent_resultat = Adherent.find_by(id: search)
        if adherent_resultat
          self.where(id: adherent_resultat)
        else
          @adherent = Adherent.all
        end
    else
      @adherent = Adherent.all
    end
  end


end

class Ordinateur < ApplicationRecord
	has_one :empruntordi

	def self.search(search)
    if search
      ordinateur_resultat = Ordinateur.find_by(id: search)
        if ordinateur_resultat
          self.where(id: ordinateur_resultat)
        else
          @ordinateur = Ordinateur.all
        end
    else
      @ordinateur = Ordinateur.all
    end
  end


end

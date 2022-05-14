class Auteur < ApplicationRecord
	has_many :documents

	
	def self.search(search)
		if search
			auteur_resultat = Auteur.find_by(id: search)
				if auteur_resultat
					self.where(id: auteur_resultat)
				else
					@auteur = Auteur.all
				end
		else
			@auteur = Auteur.all
		end
	end


end

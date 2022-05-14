json.extract! auteur, :id, :nom, :prenom, :created_at, :updated_at
json.url auteur_url(auteur, format: :json)

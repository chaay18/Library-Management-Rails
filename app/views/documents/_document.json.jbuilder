json.extract! document, :id, :titre, :nombre_copies, :created_at, :updated_at, :auteur_id
json.url document_url(document, format: :json)

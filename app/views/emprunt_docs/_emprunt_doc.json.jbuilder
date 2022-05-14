json.extract! emprunt_doc, :id, :created_at, :updated_at, :adherent_id, :document_id
json.url emprunt_doc_url(emprunt_doc, format: :json)

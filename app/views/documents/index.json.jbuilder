json.array!(@documents) do |document|
  json.extract! document, :id, :name, :title, :description
  json.url document_url(document, format: :json)
end

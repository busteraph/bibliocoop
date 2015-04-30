json.array!(@livres) do |livre|
  json.extract! livre, :id, :titre, :auteur, :user_id
  json.url livre_url(livre, format: :json)
end

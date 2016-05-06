json.array!(@releases) do |release|
  json.extract! release, :id, :app_id, :commit_msg
  json.url release_url(release, format: :json)
end

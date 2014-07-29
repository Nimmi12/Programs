json.array!(@subjects) do |subject|
  json.extract! subject, :id, :stdid, :subname, :mark
  json.url subject_url(subject, format: :json)
end

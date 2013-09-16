json.array!(@works) do |work|
  json.extract! work, :name, :av, :category, :embed
  json.url work_url(work, format: :json)
end

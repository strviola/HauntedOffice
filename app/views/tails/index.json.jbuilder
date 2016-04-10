json.array!(@tails) do |tail|
  json.extract! tail, :id, :title, :content, :teller
  json.url tail_url(tail, format: :json)
end

json.array!(@movetypes) do |movetype|
  json.extract! movetype, :id, :movetype_id, :movetype_name, :movetype_desc
  json.url movetype_url(movetype, format: :json)
end

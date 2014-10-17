json.array!(@yyys) do |yyy|
  json.extract! yyy, :id, :www
  json.url yyy_url(yyy, format: :json)
end

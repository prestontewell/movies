json.array! @movies.each do |movie|
  json.id movie.id
  json.title movie.title
  json.runtime movie.runtime
end
  

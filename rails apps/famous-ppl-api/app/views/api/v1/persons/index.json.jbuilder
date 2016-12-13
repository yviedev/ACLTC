json.array! @people.each do |person|
  json.partial! 'person.json.jbuilder', person: person
end

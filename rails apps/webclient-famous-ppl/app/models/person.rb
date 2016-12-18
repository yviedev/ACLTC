class Person
  attr_accessor :id, :name, :age, :genre, :years_of_acting, :number_of_films, :highest_grossing_salary

  def initialize(input_hash)
    @id = input_hash[:id]
    @name = input_hash[:name]
    @genre = input_hash[:genre]
    @age = input_hash[:age]
    @years_of_acting = input_hash[:years_of_acting]
    @highest_grossing_salary = input_hash[:highest_grossing_salary]
  end

  def self.find(input_id)
    person_hash = Unirest.get("http://localhost:3000/api/v1/famouspeople/#{input_id}",
    headers: {
      "Accept" => "application/json",
      "X-User-Email" => "#{ENV['USER_EMAIL']}",
      "Authorization" => "Token token=#{ENV['API_KEY_USER']}"
    },
    ).body

    person = Person.new(
      id: person_hash["id"],
      name: person_hash["name"],
      genre: person_hash["genre"],
      age: person_hash["age"],
      years_of_acting: person_hash["years_of_acting"],
      number_of_films: person_hash["number_of_films"],
      highest_grossing_salary: person_hash["highest_grossing_salary"]
    )

    return person
  end

  def self.all
    persons_hash_array = Unirest.get("http://localhost:3000/api/v1/famouspeople/",
    headers: {
      "Accept" => "application/json",
      "X-User-Email" => "#{ENV['USER_EMAIL']}",
      "Authorization" => "Token token=#{ENV['API_KEY_USER']}"
    },
    ).body

    persons = []

    persons_hash_array.each do |person_hash|
      persons << @person = Person.new(
        id: person_hash["id"],
        name: person_hash["name"],
        genre: person_hash["genre"],
        age: person_hash["age"],
        years_of_acting: person_hash["years_of_acting"],
        number_of_films: person_hash["number_of_films"],
        highest_grossing_salary: person_hash["highest_grossing_salary"],
      )
    end

    return persons

  end

  def self.create(input_hash)
    person_hash = Unirest.post("http://localhost:3000/api/v1/famouspeople/",
      headers: {
        "Accept" => "application/json",
        "X-User-Email" => "#{ENV['USER_EMAIL']}",
        "Authorization" => "Token token=#{ENV['API_KEY_USER']}"
      },
      parameters: {
        name: input_hash[:name],
        genre: input_hash[:genre],
        age: input_hash[:age],
        years_of_acting: input_hash[:years_of_acting],
        number_of_films: input_hash[:number_of_films],
        highest_grossing_salary: input_hash[:highest_grossing_salary]
      }
    ).body

    return Person.new(
      id: person_hash["id"],
      name: person_hash["name"],
      genre: person_hash["genre"],
      age: person_hash["age"],
      years_of_acting: person_hash["years_of_acting"],
      number_of_films: person_hash["number_of_films"],
      highest_grossing_salary: person_hash["highest_grossing_salary"]
    )

  end

  def update(input_hash)
    person = Unirest.patch("http://localhost:3000/api/v1/famouspeople/#{id}",
      headers: {
        "Accept" => "application/json",
        "X-User-Email" => "#{ENV['USER_EMAIL']}",
        "Authorization" => "Token token=#{ENV['API_KEY_USER']}"
      },
      parameters: {
        name: input_hash[:name],
        genre: input_hash[:genre],
        age: input_hash[:age],
        years_of_acting: input_hash[:years_of_acting],
        number_of_films: input_hash[:number_of_films],
        highest_grossing_salary: input_hash[:highest_grossing_salary]
      }
    ).body
  end

  def destroy
    Unirest.delete("http://localhost:3000/api/v1/famouspeople/#{id}")
  end
end

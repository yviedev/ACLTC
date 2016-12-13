class Person
  attr_accessor :id, :name, :age, :genre, :years_of_acting, :number_of_films, :highest_grossing_salary

  def initialize(input_hash)
    @id = input_hash[:id]
    @name = input_hash[:name]
    @genre = input_hash[:genre]
    @age = input_hash[:age]
    @years_of_acting = input_hash[:years_of_acting]
    @highest_grossing_salary = input_hash[:highest_grossing_salary]
    @top_fans = input_hash[:top_fans]
  end

  def self.find(input_id)
    person_hash = Unirest.get("http://localhost:3000/api/v1/famouspeople/#{input_id}",
    headers: {
      "Accept" => "application/json",
      "X-User-Email" => "test@test.com",
      "Authorization" => "Token token=#{ENV['API_KEY_PERSON']}"
    },
    ).body

    person = Person.new(
      name: person_hash["name"],
      genre: person_hash["genre"],
      age: person_hash["age"],
      years_of_acting: person_hash["years_of_acting"],
      number_of_films: person_hash["number_of_films"],
      highest_grossing_salary: person_hash["highest_grossing_salary"],
      top_fans: person_hash["top_fans"]
    )

    return person
  end

  def self.all
    persons_hash_array = Unirest.get("http://localhost:3000/api/v1/famouspeople/",
    headers: {
      "Accept" => "application/json",
      "X-User-Email" => "test@test.com",
      "Authorization" => "Token token=#{ENV['API_KEY_PERSON']}"
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
        top_fans: person_hash["top_fans"]
      )
    end

    return persons

  end

  def self.create(input_hash)
    person_hash = Unirest.post("http://localhost:3000/api/v1/famouspeople/",
      headers: {
        "Accept" => "application/json",
        "X-User-Email" => "test@test.com",
        "Authorization" => "Token token=#{ENV['API_KEY_PERSON']}"
      },
      parameters: {
        name: input_hash["name"],
        genre: input_hash["genre"],
        age: input_hash["age"],
        years_of_acting: input_hash["years_of_acting"],
        number_of_films: input_hash["number_of_films"],
        highest_grossing_salary: input_hash["highest_grossing_salary"],
        top_fans: input_hash["top_fans"]
      }
    ).body

    return Person.new(
      name: person_hash["name"],
      genre: person_hash["genre"],
      age: person_hash["age"],
      years_of_acting: person_hash["years_of_acting"],
      number_of_films: person_hash["number_of_films"],
      highest_grossing_salary: person_hash["highest_grossing_salary"],
      top_fans: person_hash["top_fans"]
    )

  end

  def update(input_hash)
    # p "Input hash name = #{input_hash[:name]} *******"
    @person = Unirest.patch("http://localhost:3000/api/v1/famouspeople/#{id}",
      headers: {
        "Accept" => "application/json",
        "X-User-Email" => "test@test.com",
        "Authorization" => "Token token=#{ENV['API_KEY_PERSON']}"
      },
      parameters: {
        name: input_hash[:name],
        genre: input_hash[:genre],
        age: input_hash[:age],
        years_of_acting: input_hash[:years_of_acting],
        number_of_films: input_hash[:number_of_films],
        highest_grossing_salary: input_hash[:highest_grossing_salary],
        top_fans: input_hash[:top_fans]
      }
    ).body
  end

  def self.delete
    Unirest.delete("http://localhost:3000/api/v1/famouspeople/#{id}").body
    redirect_to "/famouspeople"
  end
end

class Person
attr_accessor :name, :partner

  def initialize(name)
    @name = name
  end
  class ErrorPartner < StandardError
    def message
       "fuckity fuckity fuckernutz"
    end
  end
  def getMarried(person)
    if person.class != Person
        begin
          raise ErrorPartner
        rescue ErrorPartner => error
          puts error.message
        end
    else
      person.partner = self
    end
  end
end


beyonce = Person.new("Beyonce")
beyonce.getMarried("Jay-Z")
puts beyonce.name

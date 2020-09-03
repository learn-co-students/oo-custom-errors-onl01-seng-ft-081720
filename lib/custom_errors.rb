class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    #sets self.partner equal to a variable partner
    self.partner = person
    #calls ont eh partner variable in the class checks to see if it's != to the Person Class
    if person.class != Person
      begin
      #calls on the raise error method in the PartnerError class
        raise PartnerError
        #if it raises and error and returns an error
      rescue PartnerError => error
        #it calls on the message method in the error class
        puts error.message
      end
    else
      #otherwise it puts the partner of whos getting married
      person.partner = self
    end
  end

  class PartnerError < StandardError

    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end

  end

end

beyonce = Person.new("Beyonce")
#jay_z = Person.new("Jay-Z")
beyonce.get_married("Jay-Z")
#jay_z.get_married("Beyonce")
puts beyonce.name
#puts jay_z.name



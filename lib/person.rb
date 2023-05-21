# your code goes here
class Person
  attr_reader :name, :happiness, :hygiene

attr_accessor :bank_account

  def initialize(name, hygiene=8)
      @name=name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end
  def bank_account=(value)
      @bank_account = value
  end
  def happiness=(value)
      @happiness = value
      @happiness = 10 if @happiness > 10
      @happiness = 0 if @happiness < 0
  end
  def hygiene=(value)
      @hygiene = value
      @hygiene = 10 if @hygiene > 10
      @hygiene = 0 if @hygiene < 0
  end
  def happy?
      @happiness > 7
  end
  def clean?
      @hygiene >7
  end
  def get_paid(amount)
      self.bank_account += amount
      return "all about the benjamins"
  end
  def take_bath
      self.hygiene += 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
      self.hygiene -=3
      self.happiness +=2
      return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
      self.happiness +=3
      friend.happiness +=3
      return "Hi #{friend.name}! It's #{name}. How are you?"
  end
  def start_conversation(person, topic)
      case topic
      when "politics"
          [self, person].each do |people|
              people.happiness -=2
          end
          'blah blah partisan blah lobbyist'
      when "weather"
          [self, person].each do |people|
              people.happiness +=1
          end
          'blah blah sun blah rain'
      else
          "blah blah blah blah blah"
      end
  end
end

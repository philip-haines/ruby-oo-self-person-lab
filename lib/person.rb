# your code goes here
require "pry"

class Person
    @@all = []
    attr_reader :name
    attr_accessor :hygiene, :happiness, :bank_account

    def initialize name, hygiene = 8, happiness = 8, bank_account = 25
        @name = name
        @hygiene = hygiene
        @happiness = happiness
        @bank_account = bank_account
        @@all << self
    end

    def hygiene
       if @hygiene > 10
        @hygiene = 10
       elsif @hygiene < 0
        @hygiene = 0
       else
        @hygiene
       end
    end

    def happiness
           if @happiness > 10
        @happiness = 10
       elsif @happiness < 0
        @happiness = 0
       else
        @happiness
       end
    end

    def happy?
        if @happiness > 7
            return true
        else return false
        end
    end

    def clean?
         if @hygiene > 7
            return true
        else return false
        end
    end

    def get_paid (salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend (callee)
        self.happiness += 3
        callee.happiness += 3
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)

        case topic
        when "politics"
            person.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            person.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end


end

# binding.pry
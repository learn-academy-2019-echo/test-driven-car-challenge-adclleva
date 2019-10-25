class Vehicle
    def initialize(model_year)
        @model_year = model_year
    end

    def model_year
        @model_year
    end
end

class Car
    def initialize
        @wheels = 4
    end

    def wheels
        @wheels
    end

    def honk_horn
        'BEEP!'
    end

    def model_year
        @model_year
    end
end

class Toyota < Car
    def initialize
        super()
    end

    def honk_horn
        'whoop'
    end
end


class Tata
    def honk_horn
        "beep"
    end
end

class Tesla
    def honk_horn
        "Beep-bee-bee-boop-bee-doo-weep"
    end
end

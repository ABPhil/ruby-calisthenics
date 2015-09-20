class Dessert
    attr_accessor :name, :calories
    def initialize(name,calories)
     @name = name
     @calories = calories
    end
    def healthy?
       @calories < 200
    end
    def delicious?
        true
    end
end
class JellyBean < Dessert #JellyBean inherits Dessert
   attr_accessor :flavor
    def initialize(flav)
        @flavor = flav
        @calories = 5
        @name = @flavor + " jelly bean"
    end
    def delicious?
       if(@flavor == "licorice")
           return false
       end
       return true
    end
end
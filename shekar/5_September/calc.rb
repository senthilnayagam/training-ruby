#Program to implement simple calculator.
class Clac
    def self.add(n1,n2)
        return n1.to_f + n2.to_f
    end
    def self.sub(n1,n2)
        return n1.to_f - n2.to_f
    end
    def self.mul(n1,n2)
        return n1.to_f * n2.to_f
    end
    def self.div(n1,n2)
        return n1.to_f / n2.to_f
    end
    def self.pow(n1,n2)
        return n1.to_f ** n2.to_f
    end
end

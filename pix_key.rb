# frozen_string_literal: true

class PixKey
     
     attr_accessor :key
     attr_accessor :valid
  

     def initialize(key)
          @key = key.to_s
          if check_invalid?(key)
               @key = "".freeze
               @valid = false.freeze
               
          else
               @key = key.freeze
               @valid = true.freeze
          end
       return @type


          puts "cons: #{key}"
     end

#     def ==(email)
 #         return @key == to_check(key)
  #   end
     
 
  
   #  def email_valid?(key)
    #      key.match?("^[a-z0-9.!#$&'*+\/=?^_`{")
                    
     #end
     
     def cpf(key)
          key.match?('^[0-9]{11}$')
          return @key
     end

     def email(key)
          key.match?("^[a-z0-9.!#$&'*+\/=?^_`{")
          return @key
     end

     def phone(key)
          key.match?('^\+[1-9][0-9]\d{1,14}$')
          return @key
     end

     def cnpj(key)
          key.match?('^[0-9]{14}$')
          return @key
     end

     def evp(key)
          key.match?("[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}")
          return @key
     end


     def type(key)
          if cpf(key) == @key
               return @key
          elsif email(key) == @key
               return @key
          elsif phone(key) == @key
               return @key
          elsif cnpj(key) == @key
               return @key
          elsif evp(key) == @key
               return @key
          else return false
          end
     end


     







     def value
          return @key 
     end


     def valid?

          return @valid
     end


     def invalid?
          return !@valid
     end

     private 
     def check_invalid?(key)
          [1, nil, [], {}].include?(key)


     
          
          
end
end






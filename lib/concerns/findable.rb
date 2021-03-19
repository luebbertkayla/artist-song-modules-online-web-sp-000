module Findable
  
  module ClassMethods
    def find_by_name(name)
    @@artists.detect{|a| a.name == name}
    
end

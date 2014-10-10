 
 def are_identical_symbols_same_objects?
   # TODO: true or false?
  true
 end
 
 def are_identical_strings_same_objects?
   # TODO: true or false?
  false
 end
 
 
 @@ -22,16 +24,23 @@ def are_identical_strings_same_objects?
 
 def convert_string_to_symbol(a_string)
   # TODO: return the symbol version of "a_string"
  a_string.to_sym
 end
 
 def convert_symbol_to_string(a_symbol)
   # TODO: return the string version of "a_symbol"
  a_symbol.to_s
 end
 
 def me
   # TODO: return a Hash representing yourself, with keys such as age and name
  myself = {
    age: 27,
    name: "Julien"
  }
 end
 
 def fruits
   # TODO: return an array of fruits
    array = ["pomme", "banane", "fraise"]
 end

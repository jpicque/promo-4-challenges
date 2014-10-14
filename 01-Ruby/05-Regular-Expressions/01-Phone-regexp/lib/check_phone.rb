def french_phone_number?(phone_number)
  # TODO: true or false?
  if phone_number == /^(0|"+"33)[0-9]{9}/x 
  	return true
  else false
  end
end

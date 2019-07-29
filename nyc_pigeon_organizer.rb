def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = data.reduce({}) do |memo, (attribute, details)|
    p attribute
    p details
    details.each do |att_value, names_of_att_value|
      for name in names_of_att_value
        if memo.include?name
        # if pigeon already has an entry in pigeon_list
          if memo[name].include?attribute
          #if pigeon already has something under this attribute
          # add to existing attribute value
            memo[name][attribute].push(att_value.to_s)
          else
          # pigeon doesn't have this attribute yet
          # create a new attribute pair
            memo[name][attribute] = [att_value.to_s]
          end
          
        else
          #creates a new pair in memo for this pigeon. :)
          memo[name] = {attribute => [att_value.to_s]}
        end
      
      end
    end
    memo
  end
  
  pigeon_list
end
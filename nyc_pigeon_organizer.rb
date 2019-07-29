def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = data.reduce({}) do |memo, (key, value)|
    attribute = key
    for actual_att in value
      names_of_actual_att = value[actual_att]
      for name in names_of_actual_att
        if memo.include?name
          
          
        else
          #creates a new pair in memo for this pigeon
          memo[name] = {attribute => [actual_att.to_s]
        end
      end
    
    end
    
    
    memo
  end
  
  pigeon_list
end

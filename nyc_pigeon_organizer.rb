def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = data.reduce({}) do |memo, (attribute, details)|
    p attribute
    p details
    details.each do |qual_att, names_of_qual_att|
      for name in names_of_qual_att
        if memo.include?name
          if memo[name].include?attribute
            memo[name][attribute].push(qual_att.to_s)
          else
            memo[name][attribute] = [qual_att.to_s]
          end
          
        else
          #creates a new pair in memo for this pigeon. :)
          memo[name] = {attribute => [qual_att.to_s]}
        end
      
      end
    end
    memo
  end
  
  pigeon_list
end
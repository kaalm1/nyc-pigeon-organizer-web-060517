def nyc_pigeon_organizer(data)
  # write your code here!
  newHash = {}
  data.each do |general,info|
    info.each do |key,value|
      value.each do |x|
        newHash[x] = {} if newHash[x].nil?
        if newHash[x][general].nil?
          newHash[x].merge!({general => [key.to_s]}) 
        else
          newHash[x][general].push(key.to_s)
        end
      end
    end
  end
  newHash
end
def nyc_pigeon_organizer(data)
  pigeon_list = {}
  keys = data.keys

  data[:gender].each do |gender, name_array|
    keys.each do |key|
      name_array.each do |name|
        pigeon_list[name] = {} if pigeon_list[name] == nil
        pigeon_list[name][key] = []
      end
    end  
  end
  
  data.each do |k, h|
    h.each do |subk, a|
      a.each do |name|
        pigeon_list[name][k] << subk.to_s
      end
    end
  end

  pigeon_list
end

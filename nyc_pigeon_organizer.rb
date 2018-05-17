require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!

  new_pigeon_data = {}
  data.each do |attribute_type, attribute_data|
    attribute_data.each do |attribute, pigeon_list|
      pigeon_list.each do |pigeon_name|
        if !!new_pigeon_data[pigeon_name]
          if !!new_pigeon_data[pigeon_name][attribute_type]
            if attribute.instance_of? Symbol
              new_pigeon_data[pigeon_name][attribute_type] << (attribute.id2name)
            else
              new_pigeon_data[pigeon_name][attribute_type] << attribute
            end
          else
            if attribute.instance_of? Symbol
              new_pigeon_data[pigeon_name][attribute_type] = [attribute.id2name]
            else
              new_pigeon_data[pigeon_name][attribute_type] = [attribute]
            end
          end
        else
          new_pigeon_data[pigeon_name]={}
          if attribute.instance_of? Symbol
            new_pigeon_data[pigeon_name][attribute_type] = [attribute.id2name]
          else
            new_pigeon_data[pigeon_name][attribute_type] = [attribute]
          end
        end
      end
    end
  end
  new_pigeon_data
end

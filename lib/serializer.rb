require 'json'
require 'pathname'
class Serializer
  def serialize(x)
    Pathname('./assets/game.json').exist? ? append_data(x) : new_file_create(x)
  end

  def deserialize(file)
    JSON.parse(file)
  end

  private

  def append_data(x)
    file = File.read('./assets/game.json')
    json_array = deserialize(file)
    json_array << x
    data = JSON.dump(json_array)
    File.write('./assets/game.json', data, mode: 'w')
  end

  def new_file_create(x)
    json_array = []
    json_array << x
    data = JSON.dump(json_array)
    File.write('./assets/game.json', data, mode: 'w')
  end
end

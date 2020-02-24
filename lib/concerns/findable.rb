module Findable

  def find_by_name(name)
    self.find {|a| a.name == name}
  end

end
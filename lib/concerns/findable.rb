module Findable

  def find_by_name(name)
    self.detect {|a| a.name}
  end

end
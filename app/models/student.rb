class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def print_status
    self.active ? "This student is currently active." : "This student is currently inactive."
  end

  def activate
    self.active ? self.active = false : self.active = true
    self.save
  end
end

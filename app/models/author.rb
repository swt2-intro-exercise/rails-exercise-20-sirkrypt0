class Author < ApplicationRecord
  def name
    "#{self.first_name} #{self.last_name}"
  end
end

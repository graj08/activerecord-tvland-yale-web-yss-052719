class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name.concat(" ").concat(self.last_name)
  end

  def list_roles
    Character.all.select do |role|
      role.actor == self
    end.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

end
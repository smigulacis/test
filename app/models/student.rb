class Student < ActiveRecord::Base
 validates_length_of :vards, :uzvards, :minimum => 5, :message => "Nav!"
 has_many :position

 def self.meklet(objekts)
  if objekts
    find(:all, :conditions => ['vards LIKE ?', "%#{objekts}%"])
  else
    find(:all)
  end
 end



end

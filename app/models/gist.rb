class Gist < ActiveRecord::Base

def self.search(search)
  if search
    where('description LIKE ?', "%#{search}%")
else
   scoped
 end
end



end

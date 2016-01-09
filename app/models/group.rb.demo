class Group < ActiveRecord::Base
  groupify :group
  groupify :group, members: [:users, :assignments], default_members: :users
end

class Organization < Group
  has_members [:offices, :equipment]

  
end
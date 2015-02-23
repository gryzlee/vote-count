class AddAvatarColumnsToComittees < ActiveRecord::Migration

  def self.up
    add_attachment :comittees, :avatar
  end

  def self.down
    remove_attachment :comittees, :avatar
  end

end

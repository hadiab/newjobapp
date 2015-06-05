class AddAttachmentFileToProfiles < ActiveRecord::Migration
  def self.up
    change_table :profiles do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :profiles, :file
  end
end

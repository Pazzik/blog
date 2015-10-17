class AddPictureColumnsToArticle < ActiveRecord::Migration
  def change
  	change_table :articles do |t|  
      t.has_attached_file :picture     
    end 
  end
end

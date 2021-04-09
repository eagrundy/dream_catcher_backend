class RemoveAchievedFromDreams < ActiveRecord::Migration[6.1]
  def change
    remove_column :dreams, :achieved, :boolean
  end
end

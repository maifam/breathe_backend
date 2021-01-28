class CreateAudios < ActiveRecord::Migration[6.0]
  def change
    create_table :audios do |t|
      t.string :name
      t.string :audio_path
      t.string :category
      t.integer :length

      t.timestamps
    end
  end
end

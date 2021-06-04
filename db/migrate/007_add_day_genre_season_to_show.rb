class AddCatchphraseToCharacter < ActiveRecord::Migration[5.1]
    def change
      add_column :shows, :day, :datetime
      add_column :shows, :genre, :string
      add_column :shows, :season, :integer
    end
  end
class AddIndexToScores < ActiveRecord::Migration
  def change
    add_index :scores,  :name
  end
endbundle exec rake db:migrate
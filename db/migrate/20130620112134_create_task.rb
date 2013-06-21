
require_relative '../../config/application'

class CreateTask < ActiveRecord::Migration
  def change
    create_table  :tasks do |t|
      t.string    :content
      t.boolean   :complete, :default => false
      t.timestamps
    end
  end
end

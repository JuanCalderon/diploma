class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :event
      t.string     :name
      t.string     :email
      t.string     :hash
      t.datetime   :generated
      t.datetime   :accessed
      t.integer    :status
      t.timestamps
    end
  end
end

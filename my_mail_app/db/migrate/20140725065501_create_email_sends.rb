class CreateEmailSends < ActiveRecord::Migration
  def change
    create_table :email_sends do |t|
      t.string :to
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end

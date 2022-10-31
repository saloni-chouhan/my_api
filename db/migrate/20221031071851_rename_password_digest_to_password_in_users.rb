class RenamePasswordDigestToPasswordInUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :Password_digest, :password_digest
  end
end

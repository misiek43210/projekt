class AddPasswordDigestToPracowniks < ActiveRecord::Migration
  def change
    add_column :pracowniks, :password_digest, :string
  end
end

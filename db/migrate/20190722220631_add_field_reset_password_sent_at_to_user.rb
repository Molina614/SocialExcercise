# Created 7/22/2019 by Kori Kuzma
# Description: Column added to remove bug
class AddFieldResetPasswordSentAtToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :reset_password_sent_at, :datetime
  end
end

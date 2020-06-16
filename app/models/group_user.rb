class GroupUser < ApplicationRecord
  belongs_to :group
  belongs_to :user
end
# 中間テーブルです
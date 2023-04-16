class Project < ApplicationRecord
    has_many :tasks, inverse_of: :project
    accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true
    # accepts_nested_attributes_forは親と子のレコードを一度に作成、更新、削除が可能。複雑な機能を作る場合は非推奨なコード
    # reject_if: :all_blankは上記の”accepts_nested_attributes_for”メソッドのオプションの1つ。フォームから送信された子モデルの情報が空であった場合その子モデルを無視して親モデルのみ保存することができる
end

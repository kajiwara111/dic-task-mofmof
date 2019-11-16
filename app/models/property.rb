class Property < ApplicationRecord
  has_many :nearest_stations, inverse_of: :property
  #下記reject_if: :all_blankがないと未入力フォーム分もDBに登録される。
  #編集時、form_forのモデルに渡すインスタンスが空であればcreate actionにとぶため新規登録扱いになる。
  #結果編集のたびにフォーム数が増えていくバグになる
  accepts_nested_attributes_for :nearest_stations, reject_if: :all_blank
  validates :property_name, presence: true
  validates :rent, presence: true
  validates :address, presence: true
  validates :age_of_a_building, presence: true 
end

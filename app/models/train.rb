class Train < ApplicationRecord
  validates_presence_of :number
  has_many :reservations
  mount_uploader :train_logo, TrainLogoUploader

  def available_seats
    #回传有空的座位，这里先暂时固定回传一个数组，等会再来处理
    ["1A", "1B", "1C", "1D", "1F"]
  end
end

# 12. Userモデルに各カラムのバリデーションを記述した（「emailとpasswordが空だと保存できない」というバリデーションは標準で用意されているため、記述する必要はない）

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true

  has_many :prototypes
  has_many :comments
end

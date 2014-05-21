class Interest
  include Mongoid::Document
  field :username, type: String
  field :email, type: String

  validates :username, presence: true, length: { maximum: 30 },
                        uniqueness: true
  validates :email, presence: true, 
                    uniqueness: true
end

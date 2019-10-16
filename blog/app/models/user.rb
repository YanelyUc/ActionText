class User
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :email, type: String
  field :name, type: String
  field :last_name, type: String
  field :mobile_phone, type: String

  validates :name, presence: true
  field :is_active, type: Boolean


scope :recently, -> { where(created_at: 1.month.ago.beginning_of_day..Time.now.end_of_day) }

end

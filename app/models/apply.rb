class Apply < ApplicationRecord
    belongs_to :user
    belongs_to :exhibition

    validates :user_id, presence: true
    validates :exhibition_id, presence: true
    validates_uniqueness_of :exhibition_id, scope: :user_id
end

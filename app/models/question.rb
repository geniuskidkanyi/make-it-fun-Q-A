class Question < ActiveRecord::Base
    belongs_to :user
#    attr_accessible :body, :solved

    validates :body, presence: true
    validates :solved, inclusion: {in: [true, false]}
end

class GroupEvent < ApplicationRecord
  before_validation :ensure_duration_has_a_value, if: :starts_ends_was_given?

  validates :name, presence: true, if: :published?
  validates :description, presence: true, if: :published?
  validates :location, presence: true, if: :published?
  validates :starts, presence: true, if: :published?
  validates :ends, presence: true, if: :published?
  validates :duration, presence: true, if: :published?

  enum status: {
      draft: 0,
      unpublished: 1,
      published: 2,
      deleted: 3
  }

  private
    def published?
      GroupEvent.statuses[status] == GroupEvent.statuses[:published]
    end

    def ensure_duration_has_a_value
      if duration.blank?
        self.duration = (self.ends - self.starts).to_i
      end
    end

    def starts_ends_was_given?
      starts.present? && ends.present?
    end

end

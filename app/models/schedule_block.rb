class ScheduleBlock < ApplicationRecord
    enum week_day: { sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6 }
    belongs_to :schedule
end

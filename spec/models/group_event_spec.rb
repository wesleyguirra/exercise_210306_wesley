require 'rails_helper'

describe GroupEvent do
  context 'saving as draft' do
    it 'should be valid when not all fields are filled and status is draft' do
      # It will be created as a draft by default
      group_event = GroupEvent.new(
          name: 'Growth Hacking meeting',
          description: '',
          status: 0
      )

      expect(group_event).to be_valid
    end
  end

  context 'saving as published' do
    it 'should be valid when all fields are filled and status is published' do
      group_event = GroupEvent.new(
        name: 'Growth Hacking meeting',
        description: 'We will discuss about our growth hacking planning',
        location: 'Conference Room',
        starts: DateTime.strptime('2021-03-10 10:15:00', '%Y-%m-%d %H:%M:%S'),
        ends: DateTime.strptime('2021-03-10 10:45:00', '%Y-%m-%d %H:%M:%S'),
        duration: 1800,
        status: 2
      )

      expect(group_event).to be_valid
    end

    it 'should not be valid when not all fields are filled and status is published' do
      group_event = GroupEvent.new(
          name: 'Growth Hacking meeting',
          description: '',
          location: 'Conference Room',
          duration: nil,
          status: 2
      )

      group_event.valid?

      expect(group_event.errors[:description]).to include("can't be blank")
      expect(group_event.errors[:starts]).to include("can't be blank")
      expect(group_event.errors[:ends]).to include("can't be blank")
      expect(group_event.errors[:duration]).to include("can't be blank")
    end
  end

end

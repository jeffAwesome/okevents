require 'spec_helper'
include Capybara::DSL


def before
  @event = Event.create(title: 'Flaming Lips', location: 'Okc', date: '2015/10/15')
end

describe Event do
  it 'has a month method that translates numbers to text' do
    before
    assert_equal('Oct', @event.event_month(10))
  end

  it 'has a time method that formats time' do
    before
    the_time = "19:45:00".to_time
    assert_equal('07:45PM', @event.event_time(the_time))
  end

end

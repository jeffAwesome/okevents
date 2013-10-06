require 'spec_helper'

describe "events/index" do
  before(:each) do
    user = User.create(:email    => "alindeman@example.com",
                   :password => "ilovegrapes")
    visit "/users/sign_in"
    fill_in "Email",    :with => "alindeman@example.com"
    fill_in "Password", :with => "ilovegrapes"
    click_button "Sign in"

    assign(:events, [
      stub_model(Event,
        :title => "Flaming Lips",
        :location => "Okc",
        :date => "2013/10/15",
        :description => "MyText",
        :website => "Website"
      ),
      stub_model(Event,
        :title => "Title",
        :location => "Location",
        :date => "2014/10/05",
        :description => "MyText",
        :website => "Website"
      )
    ])
  end
#
  it "renders a list of events" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "div.large-scale div.title", :text => "Flaming Lips".to_s
    assert_select "div span.month", :text => "10".to_s
    assert_select "div span.day", :text => "15".to_s
  end
end

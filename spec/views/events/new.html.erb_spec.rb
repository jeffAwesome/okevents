require 'spec_helper'
def setup
  user = User.create(:email    => "alindeman@example.com",
                     :password => "ilovegrapes")

  visit "/users/sign_in"
  fill_in "Email",    :with => "alindeman@example.com"
  fill_in "Password", :with => "ilovegrapes"
  click_button "Sign in"
end


describe "events/new" do
  before(:each) do
    assign(:event, stub_model(Event,
      :title => "MyString",
      :location => "MyString",
     :date => "MyString",
     :description => "MyText",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new event form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", events_path, "post" do
     assert_select "input#event_title[name=?]", "event[title]"
      assert_select "input#event_location[name=?]", "event[location]"
      assert_select "input#event_date[name=?]", "event[date]"
      assert_select "textarea#event_description[name=?]", "event[description]"
      assert_select "input#event_website[name=?]", "event[website]"
    end
  end
end

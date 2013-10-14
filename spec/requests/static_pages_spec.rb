require 'spec_helper'

describe "Static Pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_title(full_title(page_title)) }
    it { should have_selector('h1', text: page_heading) }
  end

  describe "Home page" do

    let(:page_title) { '' }
    let(:page_heading) { 'Welcome to the Sample App' }
    before { visit root_path }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }

    it "should have the right links" do
      click_link "Sign up now!"
      should have_title(full_title('Sign up'))
    end
  end

  describe "Help page" do

    let(:page_title) { 'Help' }
    let(:page_heading) { 'Help' }
    before { visit help_path }

    it_should_behave_like "all static pages"
  end

  describe "About page" do

    let(:page_title) { 'About' }
    let(:page_heading) { 'About Us' }
    before { visit about_path }

    it_should_behave_like "all static pages"
  end

  describe "Contact page" do

    let(:page_title) { 'Contact' }
    let(:page_heading) { 'Contact Us' }
    before { visit contact_path }

    it_should_behave_like "all static pages"
  end


  it "should have the right links on the layout" do

    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Home"
    expect(page).to have_title(full_title(''))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
  end
end

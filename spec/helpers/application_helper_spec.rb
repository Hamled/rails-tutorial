require 'spec_helper'

describe ApplicationHelper do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "full_title" do
    it "should include the base title" do
      expect(full_title('foo')).to match(/^#{Regexp.quote(base_title)}/)
    end

    it "should include the page title" do
      expect(full_title('foo')).to match(/foo/)
    end

    it "should only include the base title for untitled pages" do
      expect(full_title('')).to match(/^#{Regexp.quote(base_title)}$/)
    end

    it "should compose the base title and page title" do
      expect(full_title('foo')).to match(/^#{Regexp.quote(base_title)} \| foo$/)
    end
  end
end

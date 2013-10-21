require File.expand_path('../spec_helper', __FILE__)

describe Settings do

  it "is not verbose by default" do
    Settings.new.verbose.should be_false
  end

end

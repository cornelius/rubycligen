require File.expand_path('../spec_helper', __FILE__)

require "aruba/api"

include Aruba::Api

describe "command line" do

  it "processes help option" do
    run "<%= $project_name %> -h"
    assert_exit_status_and_partial_output 0, "Commands:"
    assert_partial_output "<%= $project_name %> help", all_output
    assert_partial_output "Options:", all_output
  end

  it "processes do command" do
    run "<%= $project_name %> do"
    assert_success true
  end
  
  it "throws error on invalid command" do
    run "<%= $project_name %> invalid_command"
    assert_exit_status 1
  end
  
end

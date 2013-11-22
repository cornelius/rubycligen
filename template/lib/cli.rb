<%= $license_header -%>
class Cli < Thor
  default_task :global

  class_option :version, :type => :boolean, :desc => "Show version"
  class_option :verbose, :type => :boolean, :desc => "Verbose mode"

  def self.exit_on_failure?
    true
  end

  desc "global", "Global options", :hide => true
  def global
    if options[:version]
      puts "<%= $display_name %>: #{options[:version]}"
    else
      Cli.help shell
    end
  end

  desc "do", "Do something"
  method_option :quick, :type => :boolean, :aliases => "-q",
    :desc => "Do it quickly"
  def do
    print "Doing something"
    
    if options[:quick]
      print " quickly"
    end
    
    if options[:verbose]
      print " (and verbosely)"
    end
    
    puts "."
  end
end

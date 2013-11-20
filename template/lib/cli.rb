<%= $license_header -%>
class Cli < Thor

  default_task :global

  class_option :version, :type => :boolean, :desc => "Show version"
  class_option :verbose, :type => :boolean, :desc => "Verbose mode"

  def self.settings= s
    @@settings = s
  end

  desc "global", "Global options", :hide => true
  def global
    if options[:version]
      puts "<%= $display_name %>: #{@@settings.version}"
    else
      Cli.help shell
    end
  end

  desc "do", "Do something"
  method_option :quick, :type => :boolean, :aliases => "-q",
    :desc => "Do it quickly"
  def do
    process_global_options options

    print "Doing something"
    
    if options[:quick]
      print " quickly"
    end
    
    if @@settings.verbose
      print " (and verbosely)"
    end
    
    puts "."
  end

  private
  
  def process_global_options options
    @@settings.verbose = options[:verbose]
  end

end

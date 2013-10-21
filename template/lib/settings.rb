<%= $license_header %>

class Settings

  attr_accessor :verbose

  def initialize
    @verbose = false
  end

  def version
    <%= $module_name %>::VERSION
  end

end

require File.expand_path('../../lib/<%= $project_name %>', __FILE__)

bin_path = File.expand_path( "../../bin/", __FILE__ )

if ENV['PATH'] !~ /#{bin_path}/
  ENV['PATH'] = bin_path + File::PATH_SEPARATOR + ENV['PATH']
end

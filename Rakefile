require "bundler/gem_tasks"

task :ci do
  sh 'cat spec/fixtures/sample_build_output.log | bundle exec xcpretty --formatter `bin/xcpretty-teamcity-formatter`'
end


require File.expand_path('spec/helper')
require 'Update_Site_Cookbooks'
require 'Bacon_Colored'
require 'pry'
require 'Exit_Zero'

TEMP = "/tmp/Update_Site_Cookbooks"
`rm -rf #{TEMP}`
`mkdir -p #{TEMP}`

def chdir name = ""
  dir = File.join(TEMP, name)
  `mkdir -p #{dir}` unless File.directory?(dir)
  
  Dir.chdir(dir) { yield }
end

# ======== Include the tests.
if ARGV.size > 1 && ARGV[1, ARGV.size - 1].detect { |a| File.exists?(a) }
  # Do nothing. Bacon grabs the file.
else
  Dir.glob('spec/tests/*.rb').each { |file|
    require File.expand_path(file.sub('.rb', '')) if File.file?(file)
  }
end

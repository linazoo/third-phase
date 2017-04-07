require 'pp'
require 'backoffice'
require 'optparse'
require 'json'

options = {}

opt_parser = OptionParser.new do |opts|
  opts.banner = "Usage: #{__FILE__} [options]\n\n"
  opts.banner << "Examples:\n"
  opts.banner << "  bundle exec ruby #{__FILE__} -c chi-fireflies-2017 -e name\n"
  opts.banner << "  bundle exec ruby #{__FILE__} -c chi-fireflies-2017 -e github_username\n\n"
  opts.banner << "Options:\n"

  opts.on("-c COHORT", "--cohort COHORT", "Cohort, i.e. chi-fireflies-2017") do |cohort|
    options[:cohort] = cohort
  end

  opts.on("-e FIELD", "--extract FIELD", "Extract student data, i.e. 'name' or 'github'. Try the --raw option to see available fields.") do |field|
    options[:extract] = field
  end

  opts.on("-r", "--raw", "Get the cohort data as raw JSON hash") do
    options[:raw] = true
  end

  opts.on("-h", "--help", "Prints this help") do
    puts opts.help
    exit
  end
end

opt_parser.parse!

if options[:cohort].nil? || (options[:extract].nil? && options[:raw].nil?)
  opt_parser.parse(["--help"])
  exit 1
end

SECRET = ENV.fetch("BO_SECRET") { raise "Unable to find environment variable BO_SECRET"}
KEY = ENV.fetch("BO_KEY") { raise "Unable to find environment variable BO_KEY"}
client = Backoffice::Client.new(url:'https://backoffice.devbootcamp.com', secret:SECRET, key:KEY)
cohort = client.read("cohorts/#{options[:cohort]}")

if options[:raw]
  puts JSON.generate(cohort, indent: "  ", space: " ", object_nl: "\n", array_nl: "\n")
  exit
end

if options[:extract]
  cohort["students"].each do |student| 
    if student.has_key?(options[:extract])
      puts student[options[:extract]]
    else
      puts "No field '#{options[:extract]}' found."
      puts "Here are some fields that were found for this student:"
      puts student.keys.map{|k| " * #{k}"}.join("\n")
      exit
    end
  end
end

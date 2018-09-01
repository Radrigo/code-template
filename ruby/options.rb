#!/usr/bin/ruby

require 'optparse'

banner = <<TEXT
USAGE:
    #{$0} -o <DATA> -t [DATA] [-h]

PARAMETERS:
TEXT

@options = Hash.new

OptionParser.new do |opts|
    opts.banner = banner

    opts.on("-o", "--one <DATA>", "Example") do |opt|
        @options[:o] = opt
    end

    opts.on("-t", "--two [DATA]", "Example") do |opt|
        @options[:t] = opt
    end

    opts.on("-h", "--help", "Show this help.") {puts opts; exit}

    if not ARGV[0]
        puts opts 
        exit
    end

end.parse!

if @options.empty?
    print "Use -h option.\n"
    exit
end

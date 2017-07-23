require_relative '../loremhelper'


module Loremhelper
  # Public: Command line interface. Handles command line arguments.
  #
  # Examples
  #
  #   Loremhelper::Cli.new.parse
  #   # Parses ARGV and calls the specified methods.
  class Cli
    # Public: Initialize the command line interface.
    def initialize
      @error_message = "Oh, ah! Something went wrong. Was the input \
correct?"
    end

    # Public: Parses the options provided on the command line.
    #
    # Examples
    #
    #   Loremhelper::Cli.parse
    #   # This parses the command line options and executes the associated
    #   # commands
    #
    # Returns nothing.
    def parse
      begin
        if ARGV[0] =~ /paragraphs|paras/
          n = 1
          n = ARGV[1].to_i if ARGV[1] != nil
          Loremhelper.paragraphs(n).each do |paragraph|
            puts "#{paragraph}\n" + (n > 1 ? "\n" : '')
          end
        elsif ARGV[0] =~ /paragraph|para/
          n = 1
          n = ARGV[1].to_i if ARGV[1] != nil
          puts Loremhelper.paragraph(n) + "\n"
        elsif ARGV[0] =~ /tokens|words/
          n = 1
          n = ARGV[1].to_i if ARGV[1] != nil
          puts(Loremhelper.tokens(n).inject('') do |result, elem|
                 result << elem + ' '
               end.strip)
        elsif ARGV[0] =~ /sentences/
          n = 1
          n = ARGV[1].to_i if ARGV[1] != nil
          puts(Loremhelper.sentences(n).inject('') do |result, elem|
                 result << " #{elem}"
                 result
               end.strip)
        elsif ARGV[0] =~ /sentence/
          puts Loremhelper.sentences(1)
        elsif ARGV[0] == nil || ARGV[0].strip.empty? || ARGV[0] =~ /ipsum/
          puts Loremhelper.paragraph(1)
        elsif ARGV[0] =~ /all|long/
          puts Loremhelper.ipsum
        else
          puts @error_message
        end
      rescue
        puts @error_message
      end
    end
  end
end

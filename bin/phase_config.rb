#!/usr/bin/env ruby
require 'pathname'
require 'json'
require 'set'


module PhaseConfig
  extend self

  def challenges_as_hash(path)
    challenge_hash = Hash.new do |guide, week|
      guide[week] = Hash.new { |week, day| week[day] = [] }
    end
    find_challenges(path).each do |week, day, matches|
      challenge_hash[week][day] += matches
    end
    challenge_hash
  end

  def challenges_as_list(path)
    #TODO(matt): Delegate student handbook forking to Hemlock
    list = find_challenges(path).map{|challenge| challenge[2]}.flatten
    list << "student-handbook" #temporary
    list << "ar-skeleton" #temporary
    list.sort
  end

  def find_challenges(path)
    repo = File.expand_path(path)
    config_dir = "#{repo}/config"
    glob_pattern = "#{repo}/**/week-*/{pre-work,monday,tuesday,wednesday,thursday,friday,weekend}.md"
    challenge_pattern = /([^\/]*-challenge)\)/
    challenges = []
    challenge_set = Set.new

    Dir.glob(glob_pattern).each do |file|
      path = Pathname.new(file)
      week = path.parent.basename
      day = path.basename(".md")
      matches = path
        .open {|f| f.read.scan(challenge_pattern).flatten }
        .reject{|match| challenge_set.include?(match) }

      challenges << [week, day, matches]
      challenge_set.merge(matches)
    end

    challenges
  end
end

module GroupMaker
  extend self

  NUMWEEKS = 3

  def generate(students, group_size = 4, iterations = 10000)
    # Alyssa's transposition and rotation get us to a best-case scenario
    # for larger cohorts right away.
    best = generate_transposed_phase(students, group_size)
    best_extra_pairings = extra_pairings(best)

    # Random permutations seem to beat the transposition strategy
    # in smaller cohorts, so we'll test a few.
    iterations.times do |i|
      STDOUT.write "\rTesting random group #{i+1}"
      STDOUT.flush

      break if best_extra_pairings.length == 0

      candidate = generate_random_phase(students, group_size)
      candidate_extra_pairings = extra_pairings(candidate)

      if candidate_extra_pairings.length < best_extra_pairings.length
        best = candidate
        best_extra_pairings = candidate_extra_pairings
      end
    end
    STDOUT.write "\r"

    score_report(best_extra_pairings)

    best
  end

  def generate_transposed_phase(students, group_size)
    phase = []
    week = pad(generate_week(students, group_size))
    phase << unpad(week)
    (NUMWEEKS-1).times do
      week = week
        .transpose
        .map.with_index { |group, index| group.rotate(index) }
        .transpose
      phase << unpad(week)
    end
    phase
  end

  def generate_random_phase(students, group_size)
    phase = []
    NUMWEEKS.times do
      phase << generate_week(students, group_size)
    end
    phase
  end

  def extra_pairings(phase)
    scores = Hash.new { |h,k| h[k] = 0 }
    phase.each do |week|
      week.each do |group|
        group.combination(2).each do |pair|
          scores[pair.sort.join(" & ")] += 1
        end
      end
    end
    scores.select {|people, times_paired| times_paired > 1}
  end

  def generate_week(students, group_size)
    week = students.shuffle.each_slice(group_size).to_a
    if students.length % group_size != 0
      small_group = find_shortest(week)
      if small_group.length < 3
        week.delete(small_group)
        find_shortest(week).push(small_group.pop)
        find_shortest(week).push(small_group.pop)
      end
    end
    week
  end

  def format(phase)
    str = ""
    phase.each_with_index do |week, i|
      str << "#Week #{i+1}\n"
      week.each_with_index do |group, j|
        str << "#{j+1}. #{group.join(", ")}\n"
      end
      str << "\n\n"
    end
    str
  end

  def score_report(extra_pairs)
    puts "Group score: #{extra_pairs.length} repeated pairings.\n\n"

    if extra_pairs.length > 0
      extra_pairs.each do |pair, count|
        puts "  #{pair}: #{count}"
      end
      puts "\n\n"
    end
  end

  def pad(week)
    max_group_size = week.max {|a,b| a.length <=> b.length}.length
    week.each do |group|
      group.concat([""] * (max_group_size - group.length))
    end
    week
  end

  def unpad(week)
    week.map {|group| group.reject(&:empty?)}
  end

  def find_shortest(arr)
    arr.min{|a, b| a.length <=> b.length }
  end
end

if STDIN.tty?
  puts "group-maker expects a list of students via stdin, one student per line."
  puts "ex: ruby group-maker.rb < example.txt"
  exit(1)
end

students = STDIN.readlines.map(&:strip).reject(&:empty?)
puts GroupMaker.format(GroupMaker.generate(students))

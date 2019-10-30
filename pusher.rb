require_relative './helpers'
Task = Struct.new(:name, :desc) do
  def push
    Helpers.create_card(name, desc)
  end
end

File.open(ARGV[0], "r") do |f|
  tasks = []
  f.each_line do |line|
    case line
    when /^[*].*$/
      tasks << Task.new(line.chomp.delete('* '))
    when /^[-].*$/
      tasks.last.desc = line.chomp.delete('- ')
    end
  end
  tasks.reverse.map{ |task| task.push }
end

module MyEnumerable
  def list
    @list ||= []
  end

  def all?
    cool = []
    list.each do |said|
      cool.push(said) if yield(said)
    end
    puts cool.length == list.length
  end

  def any?
    cool = []
    list.each do |said|
      cool.push(said) if yield(said)
    end
    puts !cool.empty?
  end

  def filter?
    cool = []
    list.each do |said|
      cool.push(said) if yield(said)
    end
    puts cool.to_s
  end
end

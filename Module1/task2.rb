#Variant 10 Train

class Train

  def initialize(destination, number, dep_time, coupe, economy, deluxe, joint = 0)
    @destination = destination
    @number = number
    @dep_time = dep_time
    @joint = joint
    @coupe = coupe
    @economy = economy
    @deluxe = deluxe
  end

  attr_accessor :destination, :number, :dep_time,
                :joint, :coupe, :economy, :deluxe

  def to_s
    @destination.to_s + " | " + @number.to_s + " | " + @dep_time.to_s + " | " + \
    @coupe.to_s + " | " + @economy.to_s + " | " + @deluxe.to_s + " | " + @joint.to_s
  end
end

class Controller

  def initialize(destination, dep_time)
    @destination = destination
    @dep_time = dep_time
    puts dep_time
    @train_array = []
    (0..7).each do
      @train_array.push(Train.new("Kyiv", rand(1000).to_s, Time.at(rand * Time.now.to_i),
                                  10, 10, 10))
    end

    @train_array.push(Train.new("Kyiv", rand(1000).to_s, Time.at(rand * Time.now.to_i),
                                10, 10, 10, 4))
    @train_array.push(Train.new("Kyiv", rand(1000).to_s, Time.at(rand * Time.now.to_i),
                                10, 10, 10, 3))

  end

  def a_task
    puts @train_array.select { |t| t.destination == @destination}
  end

  def b_task
    puts @train_array.select { |t| t.destination == @destination &&
      t.dep_time.strftime("%H:%M:%S") > @dep_time.strftime("%H:%M:%S")}
  end

  def c_task
    puts @train_array.select { |t| t.destination == @destination && t.joint > 0}
  end
end


cont = Controller.new("Kyiv", Time.at(rand * Time.now.to_i))
cont.a_task
puts "--------"
cont.b_task
puts "--------"
cont.c_task
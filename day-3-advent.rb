wire1 = ["R1006","U867","R355","D335","L332","U787","L938","U987","L234","U940","R393","D966","R57","U900","R619","D693","L606","U272","L45","D772","R786","U766","R860","U956","L346","D526","R536","D882","L156","U822","L247","D279","R515","U467","R208","D659","R489","D295","R18","D863","L360","D28","R674","U203","L276","U518","L936","D673","L501","D414","L635","U497","R402","D530","L589","D247","L140","U697","R626","D130","L109","D169","L316","D2","R547","D305","L480","U871","R551","D48","L710","D655","R562","D395","L925","D349","L795","U308","L861","D265","R88","U116","L719","D204","R995","D197","R167","U786","R459","U978","L506","D232","L37","U530","L808","D75","R79","D469","L851","D152","R793","D362","L293","D760","L422","U516","L400","D275","L498","U877","R202","D302","L89","U924","L55","U161","L945","D578","R861","U853","R358","D427","L776","U571","R670","D29","R52","D116","R879","U359","R493","D872","L567","U382","R804","D168","R316","D376","R711","U627","R36","D241","R876","U407","L481","D360","R679","U561","L947","U449","R232","U176","R677","U850","R165","D257","R683","D666","L31","U237","L906","U810","R198","U890","L462","D928","R915","D778","L689","U271","L486","D918","L995","U61","R748","U516","L80","D109","L328","U649","L784","D546","R584","D751","L543","U217","L976","D400","L795","U332","R453","U399","L761","U823","R142","U532","R133","U255","R722","D726","L862","D845","L813","U981","R272","D800","L918","D712","R259","U972","R323","D214","R694","D629","L817","D814","L741","U111","L678","D627","L743","D509","R195","U875","R46","D344","L361","D102","L656","U897","L841","U124","L95","D770","L785","U767","L504","D309","L955","D142","L401","U914","R117","D897","R715","D117","R675","U248","R182","D725","L751","U562","R385","D120","R730","U185","L842","D446","L432","U640","R994","D482","R576","U915","R645","U109","R77","D983","L327","D209","R686","D486","R566","D406","R130","D759","R441","U895","R597","U443","L773","D704","R219","U222","R244","D11","L723","U804","L264","D121","L81","D454","R279","D642","L773","D653","R127","D199","R119","U509","L530"]

wire2 = ["L1003","D933","L419","D202","L972","U621","L211","U729","R799","U680","R925","U991","L167","U800","R198","U214","R386","D385","R117","D354","L914","D992","L519","U797","L28","D125","R163","D894","R390","D421","L75","D577","L596","U95","L403","U524","L160","D39","R209","D373","L464","U622","L824","D750","L857","U658","L109","D188","R357","D295","L227","U904","L268","U814","L483","U897","R785","U194","R865","U300","L787","U812","L321","D637","R761","U560","R800","U281","R472","D283","L490","D629","L207","D589","L310","D980","R613","U129","R668","U261","R82","D594","R627","D210","L865","U184","R387","U995","R497","U68","L776","U657","R559","D38","R981","D485","L196","D934","R313","D128","R269","D225","L32","U677","R425","U728","L665","D997","R271","D847","R715","U300","L896","D481","L30","U310","L793","D600","L219","D944","R197","D945","L564","D603","L225","U413","L900","U876","R281","D26","R449","D506","L846","D979","L817","D794","R309","D841","R735","U11","R373","U530","R74","D534","L668","U185","L972","D436","L377","D164","L88","U249","L8","D427","R711","D530","L850","D921","L644","U804","L388","U500","L813","D223","L572","U246","R309","U241","R185","D48","L545","U678","L344","D964","L772","D985","L178","U686","R937","U821","R214","D346","L648","D824","L943","D651","R98","D225","R832","D883","L814","D894","L995","D975","R440","D502","L177","D320","R675","U5","R188","D866","R974","U169","R432","D627","L424","D5","L273","U184","R657","U830","R681","U610","R170","U106","L726","D861","L257","D381","L918","D607","L820","D757","R556","D621","R21","U510","L575","D545","L590","D302","R446","D225","L164","D817","L520","D204","L33","U272","L648","D478","R945","U369","L924","D932","R46","D584","R630","U592","R613","U136","R253","D343","L983","U328","L442","D311","L258","U173","L574","U658","R283","D927","L247","D37","R36","D61","L692","U663","L207","U48","L114","U511","L924","U229","L221","D504","R345","U51","R464","D516","L115","D311","L71","D418","R378","D173","R154","U436","L403","D871","L765","D803","R630","U108","L79","U625","R77","U17đ","R911"]
#[x, y]
# wire1 = %w(R75 D30 R83 U83 L12 D49 R71 U7 L72)
# wire2 = %w(U62 R66 U55 R34 D71 R55 D58 R83)
# wire1 = %w(R98 U47 R26 D63 R33 U87 L62 D20 R33 U53 R51)
# wire2 = %w(U98 R91 D20 R16 D67 R40 U7 R15 U6 R7)



class Wire
  def initialize(input)
    @input = input
    draw_path
  end

  def path
    @path
  end

  def draw_path
    current_position = [0, 0]
    result = []
    @input.each do |step|
      direction = step[0]
      amount = step[1..-1].to_i
      amount.times do
        case direction
        when "D"
          current_position[1] = current_position[1] - 1
        when "U"
          current_position[1] = current_position[1] + 1
        when "L"
          current_position[0] = current_position[0] - 1
        when "R"
          current_position[0] = current_position[0] + 1
        end
        result.push(current_position.dup)
      end
    end
    @path = result
  end

  def path_length_until_pos(pos)
    signal = 0
    @path.each_with_index do |coordinate, index|
      signal += 1
      first_time = @path[0...index].find(coordinate)
      if first_time.class != Enumerator
        signal = @path.index(first_time)  + 1
      end
      if coordinate == pos
        break
      end
    end
    signal
  end

  def self.intersection(wire1, wire2)
     wire1.path & wire2.path
  end
end

wire_one = Wire.new(wire1)

wire_two = Wire.new(wire2)

intersections = Wire.intersection(wire_one, wire_two)

shortest_signal = 1000000000000000

intersections.each do |int|
  signal1 =wire_one.path_length_until_pos(int)
  signal2 =wire_two.path_length_until_pos(int)
  new_signal = signal1 + signal2
  if new_signal < shortest_signal
    shortest_signal = new_signal
  end
end

p shortest_signal


















# def draw_path(wire)

# end

# wire1_path = draw_path(wire1)

# wire2_path = draw_path(wire2)

# intersections_array =

# # def close_point(intersections_array)
# #   # start = [0, 0]
# #   closest_man_value = 1092098094819879827496
# #   intersections_array.each do |intersection|
# #    man_value = (0 - intersection[0]).abs + (0 - intersection[1]).abs
# #    # closest_man_value = (0 - closest[0]).abs + (0 - closest[1]).abs
# #     if closest_man_value > man_value
# #       closest_man_value = man_value
# #     end
# #   end
# #   return closest_man_value
# # end

# def path_length_until_pos(wire, pos)
#   current_position = { x: 0, y: 0, steps: 0 }
#   path = []
#   #sum = 0
#   wire.each do |step|
#     direction = step[0]
#     amount = step[1..-1].to_i
#     amount.times do
#       case direction
#       when "D"
#         current_position[:y] = current_position[:y] - 1
#       when "U"
#         current_position[:y] = current_position[:y] + 1
#       when "L"
#         current_position[:x] = current_position[:x] - 1
#       when "R"
#         current_position[:x] = current_position[:x] + 1
#       end
#       current_position[:steps] += 1
#       first_time = path.find { |posi| posi[:x] == current_position[:x] && posi[:y] == current_position[:y] }
#       if first_time
#         current_position[:steps] = first_time[:steps]
#       end
#       path.push(current_position.dup)
#       if current_position[:x] == pos[0] && current_position[:y] == pos[1]
#         break
#       end
#     end
#   end
#   current_position[:steps]
# end

# lesser_steps = 10000000000000

# intersections_array.each do |pos|
#   p pos
#   wire1_steps = path_length_until_pos(wire1, pos)
#   wire2_steps = path_length_until_pos(wire2, pos)
#   sum = wire1_steps + wire2_steps
#   p sum
#   if sum < lesser_steps
#     lesser_steps = sum
#   end
# end

# p lesser_steps

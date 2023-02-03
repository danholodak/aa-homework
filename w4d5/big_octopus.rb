
def slug_octopus(foacl)
    foacl.each do |fish|
        return fish if foacl.all?{|otherfish| otherfish.length <= fish.length}
    end
end

def dom_octopus(foacl)
    return foacl if foacl.length < 2
    halfish = foacl.length/2
    sortfish = dom_octopus_help(dom_octopus(foacl[0...halfish]), dom_octopus(foacl[halfish..-1]))
    sortfish[-1]
    
end
def dom_octopus_help (foasl, foasl2)
    return_fish = []
    while foasl.length>0 && foasl2.length>0
        if foasl[0].length < foasl2[0].length
            return_fish << foasl.shift
        else
            return_fish << foasl2.shift
        end
    end
    return_fish + foasl + foasl2
end

def clever_octopus(foacl)
    foacl[0]= fish
    foacl[1..-1].each do |otherfish|
        if otherfish.length > fish.length
            fish = otherfish
        end
    end
    fish
end

def slow_dance(direction, tiles_array)
    tiles_array.each_with_index do |tile|
        return i if tile == direction
    end
end

def constant_dance(direction, tiles_hash)
    return tiles_hash[direction]
end

fish_of_a_certain_length = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 
    'fiiiissshhhhhh']


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
    "left",  "left-up" ]

    tiles_hash = {
        "up" => 1, 
        "right-up" => 2, 
        "right" => 3,
        "right-down" => 4, 
        "down" => 5,
        "left-down" => 6, 
        "left" => 7, 
        "left-up" => 8 }
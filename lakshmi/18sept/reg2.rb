nums = %w/ 234 1 23 53434 234532453464 23455636
    324f 34532452343452 343 2324 24221 34$34232/

nums.each do |num|
    m = num.match /[0-9]+/
    
    if m.to_s.eql? num
        puts num
    end              
end


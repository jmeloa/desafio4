def chart(array)
    aux=0
    print "\n"
    for i in (0..array.count-1)
        print "|"
        if aux<array[i] then
            aux=array[i]
        end    
        for i in (1..array[i])
            print "*"*2
        end    
        print ("\n")
    end
    print ">"
    for i in (1..aux)
        print "--"
    end
    print "\n"
    for i in (1..aux)
        print " "
        print i 
    end 
    print "\n"   
end

chart([5,3,2,5,10])
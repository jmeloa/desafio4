

def lee_archivo()
    raw_data=open('notas.data').readlines
    aux=raw_data.map {|dato|dato.chomp.split(",")}
    data = aux.map do |student_info|
         student_info.map{|info| info.to_i}
    end
    nota_mas_alta(data)
    
       
        
end
    

def nota_mas_alta(data)
    grades=data.map {|student_grades| student_grades.max}
     
end    

print lee_archivo()

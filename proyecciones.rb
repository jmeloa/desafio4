
def leo_datos()
    raw_data=open('ventas_base.db').read.split(",")
end

def formateo()
    raw_data=leo_datos()
    data = raw_data.map{|data |data.to_i}
    s1=calcula(data,0,5,0.1)
    s2=calcula(data,6,12,0.2)    
    File.write("resultados.data", s1.to_s + "\n" + s2.to_s) 
    
end    

def calcula(data, desde, hasta, factor)
    aux=0
    for i in (0..data.count-1)
        if i<=hasta && i>=desde  
            aux = data[i] * (factor.to_f + 1) + aux
        elsif
            aux = data[i] + aux    
        end    
    end
    aux
end    



formateo()


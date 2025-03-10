
def plusMinus(arr)
    elements = arr.length.to_f
    
    positiveElements = arr.count { |num| num > 0 }
    negativeElements = arr.count { |num| num < 0 }
    cerosElements = arr.count { |num| num == 0 }
    
    positiveRatio = positiveElements / elements
    negativeRatio = negativeElements / elements
    cerosRatio = cerosElements / elements
    
    puts format('%.6f', positiveRatio)
    puts format('%.6f', negativeRatio)
    puts format('%.6f', cerosRatio)

end


def miniMaxSum(arr)
    
    suma_total = arr.sum
    
    valor_minimo = arr.min
    valor_maximo = arr.max
    
    suma_minima = suma_total - valor_maximo
    suma_maxima = suma_total - valor_minimo
    
    puts "#{suma_minima} #{suma_maxima}"
end


def timeConversion(s)
    
    hora = s[0..1].to_i
    minutos = s[3..4]
    segundos = s[6..7]
    periodo = s[8..9]  

    if periodo == "AM"
        hora = 0 if hora == 12  
    else
        hora += 12 if hora != 12  
    end

    hora_militar = format('%02d', hora)

    "#{hora_militar}:#{minutos}:#{segundos}"
end



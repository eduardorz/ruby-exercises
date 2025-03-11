def lonelyinteger(a)
    unico = 0
    a.each { |num| unico ^= num }
    unico
end

def diagonalDifference(arr)
    n = arr.length  
    suma_diagonal_principal = 0
    suma_diagonal_secundaria = 0

    (0...n).each do |i|
        suma_diagonal_principal += arr[i][i]          
        suma_diagonal_secundaria += arr[i][n - 1 - i] 
    end

    diferencia = (suma_diagonal_principal - suma_diagonal_secundaria).abs
    diferencia
end
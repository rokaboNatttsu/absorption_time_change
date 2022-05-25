quicksort(xs) = quicksort!(copy(xs))
quicksort!(xs) = quicksort!(xs, 1, length(xs))

function quicksort!(xs, lo, hi)
    if lo < hi
        p = partition!(xs, lo, hi)
        quicksort!(xs, lo, p - 1)   #   xs = で戻り値を受け取らないし、これで動作するの？
        quicksort!(xs, p + 1, hi)
    end
    return xs
end

function partition!(xs, lo, hi)
    pivot = div(lo + hi, 2)
    pvalue = xs[pivot]
    xs[pivot], xs[hi] = xs[hi], xs[pivot]
    j = lo
    @inbounds for i in lo:hi-1
        if isless(xs[i], pvalue)
            xs[i], xs[j] = xs[j], xs[i]
            j += 1
        end
    end
    xs[j], xs[hi] = xs[hi], xs[j]
    return j
end

#xs = [9, 3, 5, 6, 1, 3, 8, 7, 2]
#quicksort!(xs)


function solve(pussle)
    next(i, j) = i < 9 ? (i + 1, j) : (1, j + 1)


#   Juliaの文法の基本的なこと
#   https://qiita.com/cometscome_phys/items/31d0b811345a3e12fcef
#   https://www.youtube.com/watch?v=4QBiTilaGgw&list=PLckfF2jwCK3esroJw1B5WI9Xz7BJkDGMR&index=1
#   https://inzkyk.xyz/julia_doc/manual/getting-started/

#   コンパイルの方法と実行の方法は？
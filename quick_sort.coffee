# Way one, wirrten by myself!
QuickSort = (list) ->
    if list.length > 2
        pivot = list[0]
        bigger = list.filter (x) -> x > pivot
        smaller = list.filter (x) -> x < pivot
        QuickSort(smaller).concat pivot, QuickSort(bigger)
    else
        a = list

#Find in the Website, much better!
qsort = (list) ->
    if list.length == 0 then list else qsort(list[1..].filter (x) -> x < list[0]).concat list[0], qsort(list[1..].filter (x) -> x > list[0])

a = [1, 23, 2, 33, 4, 45, 6, 453]
result = QuickSort a
console.log result

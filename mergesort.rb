def mergesort(arr)
    length = arr.length

    return arr if arr.length < 2

    arr_lhs = arr[0, length/2]
    arr_rhs = arr[length/2, length]

    merge_lhs = mergesort(arr_lhs)
    merge_rhs = mergesort(arr_rhs)

    merge_list = []

    until merge_lhs.empty? || merge_rhs.empty?
        if merge_lhs[0] < merge_rhs[0]
            merge_list << merge_lhs.shift
        else
            merge_list << merge_rhs.shift
        end
    end
    merge_list << merge_lhs
    merge_list << merge_rhs
    return merge_list.flatten!
end

print mergesort([5,2,6,3,1,7,8,4])
    
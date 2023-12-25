def stock_picker(arr)
    profit_arr_of_hashes = []

    arr.each_with_index do |item1, index_of_item1|
       arr.each_with_index do |item2, index_of_item2|
        if index_of_item2 > index_of_item1
            profit_arr_of_hashes.push({buy_date: index_of_item1, sell_date: index_of_item2, profit: item2-item1})
        end
       end
    end

    largest_profit_hash = profit_arr_of_hashes.max_by{ |hash| hash[:profit]}
    result = [largest_profit_hash[:buy_date], largest_profit_hash[:sell_date]]
end

p stock_picker([17,3,6,9,15,8,6,1,10])
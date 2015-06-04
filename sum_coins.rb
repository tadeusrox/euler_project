
res = []

(0..2).each do |n100|
  val = n100 * 100
  if val == 200
    res << [n100]
    next
  end
  (0..4).each do |n50|
    val = n50 * 50 + n100 * 100
    if val == 200
      res << [n100,n50]
      next
    end
    next if val > 180
    (0..10).each do |n20|
      val = n50 * 50 + n100 * 100 + n20 * 20
      if val == 200
        res << [n100,n50,n20]
        next
      end
      next if val > 190
      (0..20).each do |n10|
        val = n50 * 50 + n100 * 100 + n20 * 20 + n10 * 10
        if val == 200
          res << [n100,n50,n20,n10]
          next
        end
        next if val > 200
        (0..40).each do |n5|
          val = n50 * 50 + n100 * 100 + n20 * 20 + n10 * 10 + n5 * 5
          if val == 200
            res << [n100,n50,n20,n10,n5]
            next
          end
          next if val > 200
          (0..100).each do |n2|
            val = n50 * 50 + n100 * 100 + n20 * 20 + n10 * 10 + n5 * 5 + n2 * 2
            if val == 200
              res << [n100,n50,n20,n10,n5,n2]
              next
            end
            next if val > 200
            (0..200).each do |n1|
              val = n50 * 50 + n100 * 100 + n20 * 20 + n10 * 10 + n5 * 5 + n2 * 2 + n1
              if val == 200
                res << [n100,n50,n20,n10,n5,n2,n1]
              end
            end
          end
        end
      end
    end
  end
end

puts res.length.inspect
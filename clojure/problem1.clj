;; Problem 1:
;;
;; If we list all the natural numbers below 10 that are multiples of 3
;; or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;;
;; Find the sum of all the multiples of 3 or 5 below 1000.

(defn valid-number? [x]
  "Number is a multiple of 3 or 5"
  (or (= 0 (mod x 3)) (= 0 (mod x 5))))

(reduce + (filter valid-number? (range 1 1000)))
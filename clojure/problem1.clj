;; Problem 1:
;;
;; If we list all the natural numbers below 10 that are multiples of 3
;; or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
;;
;; Find the sum of all the multiples of 3 or 5 below 1000.

(reduce +
        ;; drop
        (filter
         ;; true for anything of % 3 or % 5
         (fn [x] (or (= 0 (mod x 3)) (= 0 (mod x 5))))
         ;; all numbers above 0 and below 1000
         (range 1 1000)))

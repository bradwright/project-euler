;; Problem 2
;;
;; Each new term in the Fibonacci sequence is generated by adding the
;; previous two terms. By starting with 1 and 2, the first 10 terms
;; will be:
;;
;; 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
;;
;; By considering the terms in the Fibonacci sequence whose values do
;; not exceed four million, find the sum of the even-valued terms.

(defn fib-pair [[a b]]
  "Returns a fibonacci pair"
  [b (+ a b)])

(defn fibs []
  "Returns the fibonacci sequence"
  (map first (iterate fib-pair [1 2])))

;; use conditional take to lazily evaluate potentially infinite list
(def valid-fibs (take-while #(<= % 4000000) (fibs)))

;; sum the even numbers
(reduce + (filter #(even? %) valid-fibs))
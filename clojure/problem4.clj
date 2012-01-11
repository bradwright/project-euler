;; Problem 4

;; A palindromic number reads the same both ways. The largest
;; palindrome made from the product of two 2-digit numbers is 9009 =
;; 91 99.

;; Find the largest palindrome made from the product of two 3-digit
;; numbers.

(defn palindrome? [w]
  (let [word (seq (str w))]
    (= word (reverse word))))

(apply max (filter palindrome? (for [x (range 100 1000) y (range 100 x)] (* x y))))

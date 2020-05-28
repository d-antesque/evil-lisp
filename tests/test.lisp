(def utils (require "./utils.evl"))
(def proxy (require "./proxy.evl"))

(print "[*] File read working")

(def suma (lambda (a b)
            (+ 0 0)
            (+ 1 2)))

(print "[*] Lambdas working: 1 + 2 = " (suma 1 2))

(def fib (lambda (n)
           (if (< n 2)
               n
               (+ (fib (- n 1)) (fib (- n 2))))))

 (print "fib10: " (fib 10))

(print "prognres" (progn
  (print "1")
  (print "1")
  (print (list (list 1 2) 3))
  100))

(print '(1 2 3))

(print (macroexpand '(unless true (print "hola") (print "adios"))))


(let (a 10
      b 20)
  (print "let works" a)
  (print "for multiple parameters" b)) ;3


(. :log console "interop works")
(print '1)


(print "REQRES:" utils)

(utils/fooMethod)

(unless false (print "unless works"))
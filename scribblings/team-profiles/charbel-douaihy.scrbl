#lang scribble/manual
@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/lang
          "../new-tactics/code-anatomy-race.rkt")

@(bio "Charbel Douaihy"
      "no pic"
      "Howdy :) I'm Charbel Douaihy and I just finished my third year of college at UCSD.
I'm a Mathematics and Computer Science major.")

@blog{

@blog-post["Day 1"]{
My three map/apply examples are:
1) To subtract 1 from a list of 0 -> 99
   @codeblock{(map sub1 (range 100))}
2) A list of 20 clouds of width 100 and height ranging from 0 to 19
 @codeblock{(map (curry cloud 100)(range 20))}
3) A spiral!
   @codeblock{(apply cc-superimpose (map (compose circle sqr) (range 20)))}
}

@blog-post["Day 2"]{
Branching examples were done.
Another map/apply example:
@codeblock{(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}
@codeblock{(define (f x) (+ x 4))
(apply * (map f (list 1 2 3)))}

@codeblock{(apply cc-superimpose(list (cloud 175 175 "orange")(circle 100)))}
@codeblock{(define (g x) (append (list x) (list "c" "d")))
(map g (list "a" "b"))}
@codeblock{(map shuffle (list (list "c" "o" "d" "e")))}
@codeblock{(map (curry angel-wing 100 100) (list #t #f))}
@codeblock{(group-by (lambda (x) (modulo x 2)) (list (apply + (map add1 (list 1 2 3)))))}
@codeblock{(map sub1 (list (count even? (list 1 2 3 4 5))))}
@codeblock{(map circle (shuffle (range 10 100 10)))}
@codeblock{(define nice-fish (standard-fish 100 50))

(define (func x)
(if (equal? x nice-fish)
    (jack-o-lantern 100)
    (map add1 (list 1 2 3))))

(func nice-fish)}
@codeblock{(apply cc-superimpose(list (face* 'worried 'large #f default-face-color 6)(cloud 125 25 "red")))

}
}

@blog-post["Day 3"]{
More proto-kata examples using map/apply/curry and picts

1. Appending 2 lists together
@codeblock{(append (list 3 4) (list "a" "b"))}

2. Compare two lists and output true whenever they find different numbers in a certain index
@codeblock{
(map (negate =) (list 1 2 1) (list 1 2 3))
}

3. Using compose to do two functions on a list of 3 elements
@codeblock{
(map (compose (curry * 3) (curry + 5)) (list 5 6 7))
(map (compose (curry + 5) (curry * 3)) (list 5 6 7))}

4. Defining two different picts and linking them with arrows
@codeblock{
(define bluey
  (apply cc-superimpose(list (filled-ellipse 50 100 #:color "blue")
                             (filled-ellipse 25 50 #:color "red"))))
(define redy
  (apply cc-superimpose(list (filled-rounded-rectangle 60 60 -0.35
                            #:color "red"
                            #:angle (/ pi 4)
                            #:border-width 4)
                             (filled-rounded-rectangle 30 30 -0.35
                            #:color "blue"
                            #:angle (-(/ pi 12))
                            #:border-width 2))))

(pin-arrows-line 25
 (hc-append 150 bluey redy)
 bluey cc-find
 redy cc-find
 #:line-width 2.5
 #:color "yellow"
 #:start-angle (/ pi 4)
 #:end-angle (/ pi 4))}
}
@blog-post["Day 4"]{
Today, we added a "How To Add Your Blog" section to Tips&Tactics. We also added 3 tactics to the tactics-variances "a" page.
 }
}




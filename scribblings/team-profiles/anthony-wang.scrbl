#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "../new-tactics/disintegrating-v2.rkt"
          "../new-tactics/disintegrate.rkt")


@require[@for-label[Summer2019
                    racket/base]]
@(bio "Anthony Wang"
      "fo.png"
      "I go to school at Mt. Carmel High School and I will be a senior next year.")

@blog{

@blog-post["Day 1"]{We learned map, apply, combine and curry which are power traits we can use in Dr.Racket. We then made ourselves blogs to record our progress. I also finally learned what the purpose of terminal was.}
@blog-post["Day 2"]{I learned how to add things to my own branch and then how to submit a pull request.}
@blog-post["Day 3"]{ 10 Examples for Map and Apply
   @codeblock{
   #lang racket
(require pict)
}
Example 1:
create a rotated rectangle that is superimoposed that is 300 by 100 and has a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
        (curry rotate (rectangle 300 100)) (range 100)
        )
       )
   }    
Example 2:
create a rotated elipse that is superimposed and is 100 in height and 300 in width h

 @codeblock{
   (apply cc-superimpose
 (map
  (curry rotate (ellipse 300 100)) (range 100)
  )
)
}
Example 3:
create a horizontal and centered circle and rectangle that are appended where the circle has a radius of 100 and the rectangle has a width of 100 and a height of 200 with a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
      (curry rotate(hc-append (circle 100) (rectangle 100 200))) (range 100))
       )
       }
Example 4
create a vertical and centered circle and rectangle that are appended where the circle has a radius of 100 and the rectangle has a width of 100 and a height of 200 with a range of 100

 @codeblock{
   (apply cc-superimpose
       (map
        (curry rotate(vc-append (circle 100) (rectangle 100 200))) (range 100))
       )
}
Example 5
make a vertical line of 6 circles with radius 50 that are the colors of the rainbow

 @codeblock{
   (define (rainbow x)
  (map (lambda (color)
         (colorize x color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
 (apply vc-append(rainbow (circle 50)))
}
Example 6
make a list of elipse that alternate colors of the rainbow

 @codeblock{
   (define (colors x)
  (map (lambda (color)
        (colorize x color))
       (list "red" "orange" "yellow" "green" "blue" "purple")))
 (colors (circle 50))
}
 Example 7
 add up the sum of the square root of the numbers form 0-9

 @codeblock{
   (apply +
(map sqrt (range 10 )))
}
}
@blog-post["Day 4"]{Fourth of July}
@blog-post["Day 5"]{Today we discussed the redability of files. After our group worked on making easy katas. We then organized the katas and removed the duplicates and created a intro and prompts for each question. We also attempted to find a way to display the result of the code in the scribble file but we were unable to due to the fact that the website we were looking off of just inserted pictures of the codes result and not the actual result of the code. 
}

Worked on examples and began doing tickets. Our group was working on organizing the easy examples with 5 lines or less that used map and apply.

}

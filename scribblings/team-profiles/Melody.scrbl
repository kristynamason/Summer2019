#lang scribble/manual

@(require "./common.rkt"
          ts-tactics
          ts-tactics/tactics/tactic-library/disintegrating-code
          "./disintegrating-code-no-peeking.rkt")

@(define (about #:title title
                #:summary summary
                #:science (science "")
                #:key-metacognitive-concepts (metacognition '())
                #:short-term-outcomes (short-term '())
                #:long-term-outcomes (long-term '())
                )
   (list
     (para (bold "ABOUT " title))
     (para (bold "Summary.") " " (italic summary))
     (para (bold "Scientific Grounding.") " " science)
     (bold "Key meta-cognitive concepts")
     (itemize (map item metacognition))
     (bold "Short-term cognitive outcomes")
     (itemize (map item short-term))
     (bold "Long-term cognitive outcomes")
     (itemize (map item long-term))))
@require[@for-label[Summer2019
                    racket/base]]

@(require "./common.rkt")
@(bio "Melody Ruth" "melody-ruth.png" "Going into 12th grade.")

@blog{
  @blog-post["Personal Philosophy"]{
     Using programming, we can potentially create an AI which will be able to solve problems we can't solve directly, signifigantly
     extending our abilities. This certainly wouldn't replace human problem solving, in fact, it would require new types of thinking and problem solving.
  }
  @blog-post["Day 1"]{
     We learned about distributed cognition. Distributed cognition is a theory that the mind or cognitive load of an
intellectual can be distributed among other inviduals or the environment.
This means that someone can increase their abilities by relying on others
or on their environment (pencil and paper, calculator, friends, etc).

This can also be called "extended mind."

Examples of this include when groups of people or animals come together
to accomplish tasks that would be much more difficult to solve alone.

One example is when a large crowd of people played a chess match against one of the greatest chess players at the time.

Another example is when animals exhibit novel behaviors specific to their location. In the Sierra Nevadas, bears
on one side of the mountain would approach campers and charge at them to drop their food. Bears on the other side of
the mountain would not do this because their commmunication doesn't reach that far.

Distributed cognition brings up questions about what it really means to "know" something. In a hypothetical scenerio,
two people visit a museum. Inga retrieves the directions from her long term memory, while Otto has alzheimers and has to
reference a notebook. They can both navigate to the museum, so does the Otto + notebook system have the same cognitive abilities
as Inga?

Another example wherre the definition of knowledge comes into play is in the "Chinese Room" Experiment. This was conducted by
John Steargle in response to Alan Turing. The conclusion is that a computer with high-level AI would still not understand its tasks
the way a human would, even though it can still complete the task. 

@url["https://en.wikipedia.org/wiki/Distributed_cognition"]
  }
  @blog-post["Day 2"]{
      On day 2 we talked about recall vs recognition vs fluency. When you're learning a language you start with recall and then build up levels
      of recognition towards fluency.
  }
  @blog-post["Day 4"]{
New Tactic

DISINTEGRATING CODE (NO PEEKING VERSION)

@(tactic->scribble
    (disintegrating-code-no-peeking 'Coach
                         'Team
                         'Team-Computers
                         'the-challenge-card
                         'the-whiteboard
                         'the-markers))

@(about #:title   "DISINTEGRATING CODE"
        #:summary "Learners begin by copying code verbatim and end by writing it from memory without looking at their keyboard, which adds an extra element of difficulty."
        #:science "This is a type of \"Faded Worked Example\" -- an activity in which the educator gradually removes pedagogical scaffolding until there is none left."
        #:key-metacognitive-concepts (list "Don't let learners believe that real programmers memorize and regurgitate."
                                           "Make it clear that the goal is fluency and language mastery."
                                           "Make it clear that memorization is just a power tool for language learning (similar to memorizing a Spanish story if you were in Spanish class.)"
                                           "Make it clear that in the grand scheme of things, it's less about what they are memorizing and more about the act of memorization itself, and how that trains your brain to be a better programmer."
                                           (list "Tell them it's okay if they eventually forget what they just memorized -- as long as they remember " (bold "how") " to memorise it again.")
                                           "Make it clear that they are training a powerful abstract skill: The ability to translate from English into code." 
                                           "Make it clear that this is critical for being a software developer, and that it will take many years to become an expert at this cognitive process.")
        #:short-term-outcomes (list "Introduces specification (front of card) and implementation (back of card)." 
                                    "Introduces learners to the Fundamental Cognitive Act of Software Development: the translation from specification to implementation.")
        #:long-term-outcomes  (list "Trains pattern matching (\"code vision\")"
                                    "Trains recall and recognition for language identifiers (\"knowledge acquisition\")"
                                    "Trains general memory skills for abstract grammars (\"chunking\")"
                                    "Trains grammatical intuitions for the language at hand (\"syntactic and semantic intuition\")"
                                    "Frees working memory for creativity and design by reducing cognitive load caused by lack of language fluency."
                                    "Improves typing abilities"))

}

}
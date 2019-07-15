#lang scribble/manual

@(require "./common.rkt"
           (prefix-in tactics: ts-tactics)) 


@(bio "Stephen R. Foster" 
      "stephen.png"
      "Stephen's mom taught him BASIC in the early 1990s.")

@blog{

@blog-post["Personal Philosophy"]{
  I want to live in a world where everyone knows how to code.  I believe that coding ought to be a basic literacy for everyone.  I think the problems of the world today will only be solved by training an army of computational thinkers -- i.e. coders who are fluent in many languages, and also expert life-long learners, able to effortlessly wield modern science to optimize their own learning.  I think we cannot afford to live much longer in a world where the majority of people consume technology, but only a minority create it, and only a minority know how to wield it to make the world a better place. 
}

@blog-post["Day 1"]{
  I taught everyone about DCog -- which is one of my favorite software engineering philosophies.

  Discussed various scenarios from a DCog perspective: Chinese Room, Otto+Inga at the museum

  Launched @bold{Project #1}, which was to create a repo with team blogs to organize and provide documentation for the internship this summer.
}


@blog-post["Day 2"]{
Recognition vs Recall vs Fluency
}


@blog-post["Day 3"]{
Refactoring.  Broca's Region.  fMRI studies on programmers.
}

@blog-post["Day 4"]{
Taught how to pull a new repo (TS-Kata-Collections), build it,
import code from it.

Began @bold{project #2} -- to create a collection of new tactics.
Introduced the language for writing tactics: e.g.

 @codeblock{
   (instruction 'Coach
          (hand-write
            (contents-of
              (back-of 'Challenge-Card))
            (bottom-half-of 'The-Whiteboard)))
 }

 Gives:

 @(tactics:tactic->scribble
   (tactics:instruction 'Coach
          (tactics:hand-write
            (tactics:contents-of
              (tactics:back-of 'Challenge-Card))
            (tactics:bottom-half-of 'The-Whiteboard))))


}

@blog-post["Day 5"]{
  AMA.
}

@blog-post["Day 6"]{
  Second cohort began today.  Gave DCog orientation.
}

@blog-post["Day 7"]{
  Discussed: Recognition vs Recall vs Fluency. 
 
  Introduced the creation of a new tactics handbook as an ongoing project.
}

@blog-post["Day 8"]{
  Discussed: Specifications vs Implementations.  Where do specs come from?  

  Introduced git branches, git workflow, and pull requests.  

  Assigned tickets related to repository cleanliness.
}

@blog-post["Day 9"]{
  Discussed "Software Eating the World" article. 

  Closed pull requests for three tickets related to repository cleanliness.

  Discussed Krashen's input hypothesis.
}

@blog-post["Day 10"]{
  Discussed "Software Eating the World" article. 

  Closed pull requests for three tickets related to repository cleanliness.

  Discussed Krashen's input hypothesis.
}



@blog-post["Day 11"]{
  Gave demo about branches and PRs in git workflows.
}

@blog-post["Day 13"]{
  Example of how to render out a kata in scribble...

}


}


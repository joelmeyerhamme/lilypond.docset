%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 160\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/bar-number-volta-repeat.ly"
\sourcefileline 0
\version "2.19.22"

\header {
  texidoc = "Bar numbers can automatically reset at volta repeats.
"
}

musicWithBarNumberCheck =
#(define-music-function (n)
  (integer?)
#{
  \relative {
    \override Score.BarNumber.break-visibility = ##(#t #t #t)
    \repeat volta 28 {
     c'1 |
     c |
     c |
    }
    \alternative {
        << { c \barNumberCheck #n c } \\ { e e } >>
      {
        c \barNumberCheck #n c |
      }
      {
        c \barNumberCheck #n c |
      }
    }
    c c
  }
#})

{
  \set Score . alternativeNumberingStyle = #'numbers
  \musicWithBarNumberCheck #5
  \musicWithBarNumberCheck #12
}
{ \set Score . alternativeNumberingStyle = #'numbers-with-letters
  \musicWithBarNumberCheck #5
  \musicWithBarNumberCheck #12
}




% ****************************************************************
% end ly snippet
% ****************************************************************

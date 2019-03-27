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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/rehearsal-mark-number.ly"
\sourcefileline 0
\header { texidoc= "

Marks can be printed as numbers.  
By setting @code{markFormatter} we may choose a different style of mark printing. Also, marks can be specified manually, with a markup argument." 
	  
      }

\version "2.19.80"

\paper { ragged-right = ##t } 

\relative c''{
  \set Score.markFormatter = #format-mark-numbers 
  c1 | \mark \markup { \musicglyph "scripts.coda" }
  c1 | \mark \default
  c1 | \mark \default
  \set Score.markFormatter
  = #(lambda (mark  context)
      (make-box-markup (format-mark-numbers mark context)))
  c1 | \mark \default
  \set Score.markFormatter
  = #(lambda (mark  context)
      (make-circle-markup (format-mark-numbers mark context)))
  c1 | \mark \default
}




% ****************************************************************
% end ly snippet
% ****************************************************************
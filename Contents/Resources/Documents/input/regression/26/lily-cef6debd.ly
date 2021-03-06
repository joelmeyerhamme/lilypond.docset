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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/scheme-engraver-instance.ly"
\sourcefileline 0
\header {

  texidoc = "Scheme engravers may be instantiated, with
  instance-scoped slots, by defining a 1 argument procedure which
  shall return the engraver definition as an alist, with the private
  slots defined in a closure.  The argument procedure argument is the
  context where the engraver is instantiated."

}

\version "2.19.21"

\layout {
  \context {
    \Voice
    \consists
    #(let ((instance-counter 0))
       (lambda (context)
         (set! instance-counter (1+ instance-counter))
         (let ((instance-id instance-counter)
               (private-note-counter 0))
	   (make-engraver
	    (listeners
              ((note-event engraver event)
	       (set! private-note-counter (1+ private-note-counter))
	       (let ((text (ly:engraver-make-grob engraver 'TextScript event)))
		 (ly:grob-set-property! text 'text
					(format #f "~a.~a" instance-id
						private-note-counter)))))))))
  }
}

<<
  \relative { c''4 d e f }
  \\ \relative { c'4 d e f }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

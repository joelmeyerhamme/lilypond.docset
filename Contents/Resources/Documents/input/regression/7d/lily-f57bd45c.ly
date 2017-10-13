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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/scheme-engraver.ly"
\sourcefileline 0
\header {

  texidoc = "\\consists can take a scheme alist as arguments, which
  should be functions, which will be invoked as engraver functions."

}

\version "2.19.21"

#(define (t->m t)
   "Return the current moment of translator object @var{t}."
   (ly:context-current-moment (ly:translator-context t)))

engraver_demo =
#(make-engraver
   ((initialize translator)
    (format (current-error-port) "\n\n~16a: (initialize)\n" (t->m translator)))
   ((start-translation-timestep translator)
    (format (current-error-port) "~16a: (start-translation-timestep)\n" (t->m translator)))
   (listeners
     ((rest-event engraver event)
      (let ((grob (ly:engraver-make-grob engraver 'TextScript event)))
        (ly:grob-set-property! grob 'text "hi")
        (format (current-error-port) "~16a: detected this rest event: ~a\n~16a: created this grob: ~a\n"
                (t->m engraver) event (t->m engraver) grob))))
   (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (format (current-error-port) "~16a: saw ~a coming from ~a\n"
              (t->m engraver) grob source-engraver)))
   (end-acknowledgers
     ((beam-interface engraver grob source-engraver)
      (format (current-error-port) "~16a: saw end of ~a coming from ~a\n"
              (t->m engraver) grob source-engraver)))
   ((process-music translator)
    (format (current-error-port) "~16a: (process-music)\n" (t->m translator)))
   ((process-acknowledged translator)
    (format (current-error-port) "~16a: (process-acknowledged)\n" (t->m translator)))
   ((stop-translation-timestep translator)
    (format (current-error-port) "~16a: (stop-translation-timestep)\n" (t->m translator)))
   ((finalize translator)
    (format (current-error-port) "~16a: (finalize)\n" (t->m translator))))

\layout {
  \context {
    \Voice
    \consists
    \engraver_demo
  }
}

\relative {
  c'8[ r c]
}



% ****************************************************************
% end ly snippet
% ****************************************************************
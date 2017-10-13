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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-release-unstable/input/regression/music-map.ly"
\sourcefileline 0
\header {

  texidoc =

  "With @code{music-map}, you can apply functions operating on a
single piece of music to an entire music expression. In this example,
the function @code{notes-to-skip} changes a note to a skip. When
applied to an entire music expression in the 1st measure, the scripts
and dynamics are left over. These are put onto the 2nd measure."

}

\version "2.17.27"

#(define (notes-to-skip m)
  "Convert all stuff with duration (notes, lyrics, bass figures, etc.) to skips.
Scripts and dynamics are maintained."
  (if (music-is-of-type? m 'rhythmic-event)
      (make-music 'SkipEvent m)
      m))


\layout { ragged-right= ##t }

foobar =  \transpose c c' { c4\>-^ c4-^ c4\!-^ c4-^  }


\relative c''  \context Voice {
  \foobar

  << \applyMusic #(lambda (x) (music-map notes-to-skip x))
     \foobar
     { d8 d d d d d d d  } >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
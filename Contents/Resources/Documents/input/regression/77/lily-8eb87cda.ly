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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/safe.ly"
\sourcefileline 0
\version "2.16.0"

expect-error = ##t

% Ugh - this affects other files too.
#(ly:set-option 'protected-scheme-parsing #t)
#(ly:set-option 'safe #t)

force-finish = ##t

\header{
    texidoc = "This should not survive lilypond --safe-mode"

    #(open-file "w")
}


#(open-file "/tmp/safe-guile.scm")

\include "this-should-fail.ly"



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/incompatible-stem-warning.ly"
\sourcefileline 0
\version "2.16.0"
#(ly:set-option 'warning-as-error #f)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 1)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 8)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 4 1)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 1)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 4)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 1)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 4)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))
#(ly:expect-warning (ly:translate-cpp-warning-scheme "adding note head to incompatible stem (type = %d/%d)") 1 8)
#(ly:expect-warning (ly:translate-cpp-warning-scheme "maybe input should specify polyphonic voices"))


\header {

  texidoc = "
Combine several kinds of stems in parallel voices.
"

}

\new Voice { \time 4/1
	     << c'\breve e'8 >>
	     << c'8 e'\breve >> |
	     << c'\longa e'1 >> |
	     << c'1 e'\longa >> |
	     << c'2 e'1 >>
	     << c'1 e'2 >>
	     << c'2 e'4 >>
	     << c'4 e'2 >>
	     << c'2 e'8 >>
	     << c'8 e'2 >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************
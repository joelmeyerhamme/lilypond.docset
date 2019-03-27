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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/harp-pedals.ly"
\sourcefileline 0
\version "2.19.80"

#(ly:set-option 'warning-as-error #f)
#(ly:expect-warning (_ "Harp pedal diagram contains ~a pedals rather than the usual 7.") 0)
#(ly:expect-warning (_ "Harp pedal diagram does not contain a divider (usually after third pedal)."))
#(ly:expect-warning (_ "Harp pedal diagram contains ~a pedals rather than the usual 7.") 1)
#(ly:expect-warning (_ "Harp pedal diagram does not contain a divider (usually after third pedal)."))
#(ly:expect-warning (_ "Unhandled entry in harp-pedal: ~a" ) "a")
#(ly:expect-warning (_ "Unhandled entry in harp-pedal: ~a" ) "s")
#(ly:expect-warning (_ "Unhandled entry in harp-pedal: ~a" ) "d")
#(ly:expect-warning (_ "Unhandled entry in harp-pedal: ~a" ) "f")
#(ly:expect-warning (_ "Unhandled entry in harp-pedal: ~a" ) "x")


\header {
  texidoc = "Basic harp diagram functionality, including circled pedal boxes. 
The third diagram uses an empty string, the third contains invalid characters. 
Both cases will create warnings, but should still not fail with an error."
}

\relative {
  c''1^\markup \harp-pedal "^v-|vv-^"
  % circled boxes:
  c1^\markup \harp-pedal "o^ovo-|vovo-o^"
  % invalid pedal specifications, which still should be handled gracefully:
  c1^\markup \harp-pedal ""
  c1^\markup \harp-pedal "asfdvx" %\break
}



% ****************************************************************
% end ly snippet
% ****************************************************************

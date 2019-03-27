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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/dynamics-text-spanner-postfix.ly"
\sourcefileline 0
\version "2.19.21"

\header {
texidoc = "The \cresc, \dim and \decresc spanners are now postfix operators
and produce one text spanner.  Defining custom spanners is also easy.
Hairpin and text crescendi can be easily mixed. \< and \> produce
hairpins by default, \cresc etc. produce text spanners by default."
}

% Some sample text dynamic spanners, to be used as postfix operators
crpoco = #(make-music 'CrescendoEvent 'span-direction START
                      'span-type 'text 'span-text "cresc. poco a poco")

\relative {
  c'4\cresc d4 e4 f4 |
  g4 a4\! b4\crpoco c4 |
  c4 d4 e4 f4 |
  g4 a4\! b4\< c4 |
  g4\dim a4 b4\decresc c4\!
}



% ****************************************************************
% end ly snippet
% ****************************************************************
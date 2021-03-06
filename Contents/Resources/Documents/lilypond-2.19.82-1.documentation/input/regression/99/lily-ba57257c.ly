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
\sourcefilename "/home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/input/regression/figured-bass-slashed-numbers.ly"
\sourcefileline 0
\version "2.19.22"

\header {
texidoc = "Figured bass supports numbers with slashes through
them.
"
}

bassfigures = \figuremode {
  <0/ 1/ 2/> <3/ 4/ 5/> <6/ 7/ 8/> <9/ 10/ 11/> <12/ 13/ 100/>
  <0\\ 1\\ 2\\> <3\\ 4\\ 5\\> <6\\ 7\\ 8\\> <9\\ 10\\ 11\\> <12\\ 13\\ 100\\>
  <3\\\+ 6\\/ 7\\+! >
}

<<
  \new FiguredBass \bassfigures
>>

%{
% Override the exceptions:

#(define (horizontal-slash-interval-default num forward number-interval mag)
    (interval-widen number-interval (* mag 0.25)))

#(define (adjust-slash-stencil-default num forward stencil mag)
    stencil)

unsetExceptions = #(define-void-function () ()
;  (set! horizontal-slash-interval horizontal-slash-interval-default)
;  (set! adjust-slash-stencil adjust-slash-stencil-default)
)

<<
  \unsetExceptions
  \new FiguredBass <<\unsetExceptions \bassfigures>>
>>
%}



% ****************************************************************
% end ly snippet
% ****************************************************************

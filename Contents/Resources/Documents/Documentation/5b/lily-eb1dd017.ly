%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=13.0\cm,notime,quote,relative=2]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  indent = 0\mm
  line-width = 13.0\cm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
  line-width = 13.0\cm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
 \context {
   \Score
   timing = ##f
 }
 \context {
   \Staff
   \remove "Time_signature_engraver"
 }
}



\relative c''
{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 3888
#(define-markup-command (diagonal-stroke layout props arg)
  (markup?)
  #:category font
  #:properties ((font-size 0) (thickness 1.5) (extension 0.07))
  (let*
   ((thick (* (magstep font-size)
      (ly:output-def-lookup layout 'line-thickness)))
    (underline-thick (* thickness thick))
    (m (interpret-markup layout props arg))
    (x1 (car (ly:stencil-extent m X)))
    (x2 (cdr (ly:stencil-extent m X)))
    (y1 (car (ly:stencil-extent m Y)))
    (y2 (cdr (ly:stencil-extent m Y)))
    (dx (* extension (- x2 x1)))
    (dy (* extension (- y2 y1)))
    (line (make-line-stencil underline-thick
      (- x1 dx) (- y1 dy)
      (+ x2 dx) (+ y2 dy))))
   (ly:stencil-add m line)))
<<
  {
    <g e c>1 <a f d> <b g e>
    <c a f> <d b g> <e c a> <f d b>
  }
  \lyrics {
    T Sp Dp S D Tp
    \markup { \concat { \diagonal-stroke D \super "7" } }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
}

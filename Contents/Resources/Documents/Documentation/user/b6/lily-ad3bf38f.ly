%% Generated by lilypond-book.py
%% Options: [alt=[image of music],notime,indent=0\mm,line-width=13.0\cm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 13.0\cm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
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



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefileline 5879
\relative c'' {
  r\longa_"longa" r\breve_"breve"
  r1_"1/1" r2_"1/2" r4_"1/4" s16 r8_"1/8" s16
  r16_"1/16" s16 r32_"1/32" s16 r64_"1/64" s32 }



% ****************************************************************
% end ly snippet
% ****************************************************************
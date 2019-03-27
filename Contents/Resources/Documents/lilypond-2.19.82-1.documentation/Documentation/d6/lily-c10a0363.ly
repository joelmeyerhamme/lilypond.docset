%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,indent=0\mm,line-width=160\mm,quote]
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
  line-width = 160\mm - 2.0 * 10.16\mm
  % offset the left padding, also add 1mm as lilypond creates cropped
  % images with a little space on the right
  line-width = #(- line-width (* mm  3.000000) (* mm 1))
}

\layout {
  
}





% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "fretted-string-harmonics-in-tablature.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: 8ffecf6be17c6ec2ff87cf31873121a8cce29b09
  texidoces = "
Armónicos sobre cuerdas pisadas (armónicos artificiales):
"
  doctitlees = "Armónicos sobre cuerdas pisadas en tablatura"

%% Translation of GIT committish: f86f00c1a8de0f034ba48506de2801c074bd5422
  texidocde = "
Flageolett für Bundinstrumente:
"
  doctitlede = "Flageolett von Bundinstrumenten in einer Tabulatur"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Harmoniques et tablature (harmoniques artificielles).

"
  doctitlefr = "Harmoniques et tablature"

  lsrtags = "fretted-strings"

  texidoc = "
Demonstrates fretted-string harmonics in tablature

"
  doctitle = "Fretted-string harmonics in tablature"
} % begin verbatim

pinchedHarmonics = {
   \textSpannerDown
   \override TextSpanner.bound-details.left.text =
      \markup {\halign #-0.5 \teeny "PH" }
      \override TextSpanner.style =
         #'dashed-line
   \override TextSpanner.dash-period = #0.6
   \override TextSpanner.bound-details.right.attach-dir = #1
   \override TextSpanner.bound-details.right.text =
      \markup { \draw-line #'(0 . 1) }
   \override TextSpanner.bound-details.right.padding = #-0.5
}

harmonics = {
  %artificial harmonics (AH)
  \textLengthOn
  <\parenthesize b b'\harmonic>4_\markup{ \teeny "AH 16" }
  <\parenthesize g g'\harmonic>4_\markup{ \teeny "AH 17" }
  <\parenthesize d' d''\harmonic>2_\markup{ \teeny "AH 19" }
  %pinched harmonics (PH)
  \pinchedHarmonics
  <a'\harmonic>2\startTextSpan
  <d''\harmonic>4
  <e'\harmonic>4\stopTextSpan
  %tapped harmonics (TH)
  <\parenthesize g\4 g'\harmonic>4_\markup{ \teeny "TH 17" }
  <\parenthesize a\4 a'\harmonic>4_\markup{ \teeny "TH 19" }
  <\parenthesize c'\3 c''\harmonic>2_\markup{ \teeny "TH 17" }
  %touch harmonics (TCH)
  a4( <e''\harmonic>2. )_\markup{ \teeny "TCH" }
}

frettedStrings = {
  %artificial harmonics (AH)
  \harmonicByFret #4 g4\3
  \harmonicByFret #5 d4\4
  \harmonicByFret #7 g2\3
  %pinched harmonics (PH)
  \harmonicByFret #7 d2\4
  \harmonicByFret #5 d4\4
  \harmonicByFret #7 a4\5
  %tapped harmonics (TH)
  \harmonicByFret #5 d4\4
  \harmonicByFret #7 d4\4
  \harmonicByFret #5 g2\3
  %touch harmonics (TCH)
  a4 \harmonicByFret #9 g2.\3
}

\score {
  <<
    \new Staff
    \with { \omit StringNumber } {
      \new Voice {
        \clef "treble_8"
        \harmonics
      }
    }
    \new TabStaff {
      \new TabVoice {
        \frettedStrings
      }
    }
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

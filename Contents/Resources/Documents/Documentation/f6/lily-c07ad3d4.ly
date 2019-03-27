%% Generated by lilypond-book.py
%% Options: [exampleindent=10.16\mm,fragment,indent=0\mm,line-width=160\mm,quote,ragged-right]
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
  ragged-right = ##t
}

\layout {
  
}




{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 2414
% Estableix els detalls per a un Text Spanner posterior
\override TextSpanner.bound-details.left.text
    = \markup { \small \bold Slower }
% Ubica els indicadors de dinàmica a sobre del pentagrama
\dynamicUp
% Posa els següent indicador d'octava a sota dels Text Spanners
\once \override Staff.OttavaBracket.outside-staff-priority = #340
% Inicia l'indicador d'octava
\ottava #1
c''4 \startTextSpan
% Afegeix el text de la dinàmica
c''4\pp
% Afegeix l'extensor de la línia de dinàmica
c''4\<
% Afegeix el fragment de text
c''4^Text |
c''4 c''
% Afegeix el text de la dinàmica
c''4\ff c'' \stopTextSpan |
% Atura l'indicador d'octava
\ottava #0
c'4 c' c' c' |



% ****************************************************************
% end ly snippet
% ****************************************************************
}

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
\sourcefilename "moving-the-ends-of-hairpins.ly"
\sourcefileline 0
% DO NOT EDIT this file manually; it is automatically
% generated from Documentation/snippets/new
% Make any changes in Documentation/snippets/new/
% and then run scripts/auxiliar/makelsr.py
%
% This file is in the public domain.
%% Note: this file works from version 2.19.55
\version "2.19.55"

\header {
%% Translation of GIT committish: 8ef5f99e63cc9e52c7c0071cde4d99e057d10329
  texidocit = "
Le estremità delle forcelle possono essere spostate in modo relativo alla
loro posizione predefinita (offset) impostando la proprietà @code{shorten-pair}
dell'oggetto @code{Hairpin}.  Valori positivi spostano le estremità a
destra, valori negativi le spostano a sinistra. Diversamente dalla
proprietà @code{minimum-length}, questa proprietà modifica solo l'aspetto
della forcella; non cambia la spaziatura orizzontale (inclusa la posizione
delle dinamiche confinanti).  Questo metodo è quindi utile per ritoccare
una forcella entro lo spazio ad essa allocato.

"
  doctitleit = "Spostare le estremità delle forcelle"

  lsrtags = "expressive-marks"

  texidoc = "
The ends of hairpins may be offset by setting the @code{shorten-pair}
property of the @code{Hairpin} object.  Positive values move endpoints
to the right, negative to the left.  Unlike the @code{minimum-length}
property, this property only affects the appearance of the hairpin; it
does not adjust horizontal spacing (including the position of bounding
dynamics).  This method is thus suitable for fine-tuning a hairpin
within its allotted space.

"
  doctitle = "Moving the ends of hairpins"
} % begin verbatim


{
  c'1~\<
  c'2~ c'\!
  \once \override Hairpin.shorten-pair = #'(2 . 2)
  c'1~\<
  c'2~ c'\!
  \once \override Hairpin.shorten-pair = #'(-2 . -2)
  c'1~\<
  c'2~ c'\!
  c'1~\p-\tweak shorten-pair #'(2 . 0)\<
  c'2~ c'\ffff
}



% ****************************************************************
% end ly snippet
% ****************************************************************

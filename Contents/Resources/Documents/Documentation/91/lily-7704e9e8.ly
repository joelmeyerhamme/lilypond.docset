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
\sourcefilename "changing-the-text-for-sustain-markings.ly"
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
Se puede usar @code{Staff.pedalSustainStrings} para fijar el texto de
las indicaciones de pisar pedal y levantar pedal.  Observe que las
únicas cadenas válidas son las que están en la lista de glifos de
pedal: los valores que aparecen en este fragmento de código son una
relación exhaustiva.

"
  doctitlees = "Modificar el texto de las indicaciones de pedal"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
@code{Staff.pedalSustainStrings} permet de définir le texte affiché pour
les instructions de pédale.  Les seuls caractères autorisés sont les
glyphes particuliers de pédale, comme vous pouvez le constater ici.

"
  doctitlefr = "Modification du texte des indications de pédale"

  lsrtags = "keyboards, tweaks-and-overrides"

  texidoc = "
@code{Staff.pedalSustainStrings} can be used to set the text used for
pedal down and up.  Note that the only valid strings are those found in
the list of pedal glyphs - the values used this snippet constitute an
exhaustive list.

"
  doctitle = "Changing the text for sustain markings"
} % begin verbatim

sustainNotes = { c4\sustainOn d e\sustainOff\sustainOn f\sustainOff }

\relative c' {
  \sustainNotes
  \set Staff.pedalSustainStrings = #'("P" "P-" "-")
  \sustainNotes
  \set Staff.pedalSustainStrings = #'("d" "de" "e")
  \sustainNotes
  \set Staff.pedalSustainStrings = #'("M" "M-" "-")
  \sustainNotes
  \set Staff.pedalSustainStrings = #'("Ped" "*Ped" "*")
  \sustainNotes
}



% ****************************************************************
% end ly snippet
% ****************************************************************

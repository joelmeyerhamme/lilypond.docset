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
\sourcefilename "preventing-natural-signs-from-being-printed-when-the-key-signature-changes.ly"
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
  doctitlees = "Evitar que se impriman becuadros cuando cambia la armadura"
  texidoces = "
Cuando cambia la armadura de la tonalidad, se imprimen becuadros
automáticamente para cancelar las alteraciones de las armaduras
anteriores.  Esto se puede evitar estableciendo al valor @qq{falso} la
propiedad @code{printKeyCancellation} del contexto @code{Staff}.

"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Quando l'armatura di chiave cambia, vengono inseriti automaticamente i
segni di bequadro per annulare le alterazioni di precedenti armature.  Si
può evitare questo comportamento impostando su @code{f} (falso) la proprietà
@code{printKeyCancellation} nel contesto @code{Staff}.

"
  doctitleit = "Impedire l'inserimento dei segni di bequadro quando cambia l'armatura di chiave"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
doctitlede = "Auflösungzeichen nicht setzen, wenn die Tonart wechselt"

texidocde = "
Wenn die Tonart wechselt, werden automatisch Auflösungszeichen ausgegeben,
um Versetzungszeichen der vorherigen Tonart aufzulösen.  Das kann
verhindert werden, indem die @code{printKeyCancellation}-Eigenschaft
im @code{Staff}-Kontext auf \"false\" gesetzt wird.
"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Après un changement de tonalité, un bécarre est imprimé pour annuler
toute altération précédente.  Ce comportement s'annule en désactivant la
propriété @code{printKeyCancellation} du contexte @code{Staff}.

"
  doctitlefr = "Suppression des bécarres superflus après un changement de tonalité"

  lsrtags = "automatic-notation, pitches"

  texidoc = "
When the key signature changes, natural signs are automatically printed
to cancel any accidentals from previous key signatures.  This may be
prevented by setting to @code{f} the @code{printKeyCancellation}
property in the @code{Staff} context.

"
  doctitle = "Preventing natural signs from being printed when the key signature changes"
} % begin verbatim

\relative c' {
  \key d \major
  a4 b cis d
  \key g \minor
  a4 bes c d
  \set Staff.printKeyCancellation = ##f
  \key d \major
  a4 b cis d
  \key g \minor
  a4 bes c d
}



% ****************************************************************
% end ly snippet
% ****************************************************************

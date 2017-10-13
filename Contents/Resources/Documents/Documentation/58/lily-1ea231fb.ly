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
\sourcefilename "using-ties-with-arpeggios.ly"
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
  doctitlees = "Uso de ligaduras en los arpegios"
  texidoces = "
En ocasiones se usan ligaduras de unión para escribir los arpegios.
En este caso, las dos notas ligadas no tienen que ser consecutivas.
Esto se puede conseguir estableciendo la propiedad
@code{tieWaitForNote} al valor @code{#t}.  La misma funcionalidad
es de utilidad, por ejemplo, para ligar un trémolo a un acorde, pero
en principio también se puede usar para notas normales consecutivas.

"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Le legature di valore vengono usate talvolta per scrivere un arpeggio.  In questo
caso, le due note da legare devono non essere consecutive.  Per ottenere tale risultato
occorre impostare la proprietà @code{tieWaitForNote} su @code{#t}.  Questa
funzionalità serve anche a legare un tremolo a un accordo e in generale
qualsiasi coppia di note consecutive.

"
  doctitleit = "Usare le legature di valore con un arpeggio"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
 texidocde = "
 Überbindungen werden teilweise benutzt, um Arpeggios zu notieren.  In
 diesem Fall stehen die übergebundenen Noten nicht unbedingt hintereinander.
Das Verhalten kann erreicht werden, indem die @code{tieWaitForNote}-Eigenschaft
auf @code{#t} gesetzt wird.  Diese Funktion ist auch sinnvoll, um etwa
ein Tremolo mit einem Akkord zu überbinden, kann aber prinzipiell auch
für normale Überbindungen eingesetzt werden
"
  doctitlede = "Überbindungen für Arpeggio benutzen"



%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Les liaisons de tenue servent parfois à rendre un accord arpégé.  Dans
ce cas, les notes liées ne sont pas toutes consécutives. Il faut alors
assigner à la propriété @code{tieWaitForNote} la valeur @code{#t}
(@emph{true} pour « vrai »).  Cette même méthode peut servir, par
exemple, à lier un trémolo à un accord.

"
  doctitlefr = "Liaison de tenue et arpège"

  lsrtags = "rhythms"

  texidoc = "
Ties are sometimes used to write out arpeggios.  In this case, two tied
notes need not be consecutive.  This can be achieved by setting the
@code{tieWaitForNote} property to @code{#t}.  The same feature is also
useful, for example, to tie a tremolo to a chord, but in principle, it
can also be used for ordinary consecutive notes.

"
  doctitle = "Using ties with arpeggios"
} % begin verbatim

\relative c' {
  \set tieWaitForNote = ##t
  \grace { c16[ ~ e ~ g] ~ } <c, e g>2
  \repeat tremolo 8 { c32 ~ c' ~ } <c c,>1
  e8 ~ c ~ a ~ f ~ <e' c a f>2
  \tieUp
  c8 ~ a
  \tieDown
  \tieDotted
  g8 ~ c g2
}



% ****************************************************************
% end ly snippet
% ****************************************************************

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
\sourcefilename "arabic-improvisation.ly"
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
Para las improvisaciones o @emph{taqasim} que son libres durante unos
momentos, se puede omitir la indicación de compás y se puede usar
@code{\cadenzaOn}.  Podría ser necesario ajustar el estilo de
alteraciones accidentales, porque la ausencia de líneas divisorias
hará que la alteración aparezca una sola vez.  He aquí un ejemplo de
cómo podría ser el comienzo de una improvisación @emph{hijaz}:

"
  doctitlees = "Improvisación de música árabe"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Per improvvisazioni o taqasim a tempo libero, si può omettere l'indicazione
di tempo e usare @code{\\cadenzaOn}.  Può essere necessaria la modifica
dello stile delle alterazioni, perché l'assenza delle stanghette farà
sì che l'alterazione sia contrassegnata una volta sola.  Ecco un esempio
di quello che potrebbe essere l'inizio di un'improvvisazione hijaz:

"
  doctitleit = "Improvvisazione araba"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Bei Improvisation oder @emph{taqasim}, die zeitlich frei gespielt
werden, kann die Taktart ausgelassen werden und @code{\cadenzaOn}
kann eingesetzt werden.  Es kann nötig sein, den Versetzungszeichenstil
anzupassen, weil sonst die Versetzungszeichen nur einmal ausgegeben
werden, da keine Taktlinien gesetzt sind.  Hier ein Beispiel, wie
der Beginn einer @emph{hijaz}-Improvisation aussehen könnte:

"

  doctitlede = "Arabische Improvisation"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Lorsque les improvisations ou @emph{taqasim} sont temporairement libres,
la métrique peut ne pas apparaître, auquel cas on utilisera un
@code{\\cadenzaOn}.  Les altérations accidentelles devront alors être
répétées en raison de l'absence de barre de mesure.  Voici comment
pourrait débuter une improvisation de @emph{hijaz}.

"
  doctitlefr = "Improvisation en musique arabe"

  lsrtags = "world-music"

  texidoc = "
For improvisations or taqasim which are temporarily free, the time
signature can be omitted and @code{\\cadenzaOn} can be used.  Adjusting
the accidental style might be required, since the absence of bar lines
will cause the accidental to be marked only once.  Here is an example
of what could be the start of a hijaz improvisation:

"
  doctitle = "Arabic improvisation"
} % begin verbatim

\include "arabic.ly"

\relative sol' {
  \key re \kurd
  \accidentalStyle forget
  \cadenzaOn
  sol4 sol sol sol fad mib sol1 fad8 mib re4. r8 mib1 fad sol
}



% ****************************************************************
% end ly snippet
% ****************************************************************
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
\sourcefilename "using-arpeggiobracket-to-make-divisi-more-visible.ly"
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
El corchete de arpegios @code{arpeggioBracket} se puede usar para
indicar la división de voces cuando no hay plicas que puedan ofrecer
esta información. Se suele encontrar en la música coral.

"
  doctitlees = "Uso de arpeggioBracket para hacer más visible un divisi"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Si può usare @code{arpeggioBracket} per indicare la divisione delle
voci quando non ci sono gambi che forniscano questa informazione. Questo
caso è frequente nella musica corale.

"
  doctitleit = "Usare arpeggioBracket per rendere i divisi più  visibili"

%% Translation of GIT committish: 27b1197f3bae8512c14d946752cd3e40e7c76016

  texidocde = "
Das @code{arpeggioBracket}-Klammerobjekt kann benutzt werden, um geteilte
Stimmen anzuzeigen, wenn keine Hälse diese Information bieten.  Das sieht
man oft in Chormusik.

"
  doctitlede = "Arpeggio-Klammern benutzen, um geteilte Stimmen besser sichtbar zu machen"


%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Un crochet d'arpège (@code{arpeggioBracket}) permet de mettre en
évidence les divisions d'un pupitre en l'absence de hampe, comme on le
voit régulièrement dans les partitions pour chœur.

"
  doctitlefr = "Utilisation d'un arpeggioBracket pour rendre les divisions plus évidentes"

  lsrtags = "expressive-marks, vocal-music"

  texidoc = "
The @code{arpeggioBracket} can be used to indicate the division of
voices where there are no stems to provide the information. This is
often seen in choral music.

"
  doctitle = "Using arpeggioBracket to make divisi more visible"
} % begin verbatim

\include "english.ly"

\score {
  \relative c'' {
    \key a \major
    \time 2/2
    <<
      \new Voice = "upper"
      <<
        { \voiceOne \arpeggioBracket
          a2( b2
          <b d>1\arpeggio)
          <cs e>\arpeggio ~
          <cs e>4
        }
        \addlyrics { \lyricmode { A -- men. } }
      >>
      \new Voice = "lower"
      { \voiceTwo
        a1 ~
        a
        a ~
        a4 \bar "|."
      }
    >>
  }
  \layout { ragged-right = ##t }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

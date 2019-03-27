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
\sourcefilename "vocal-ensemble-template.ly"
\sourcefileline 0
%% DO NOT EDIT this file manually; it is automatically
%% generated from LSR http://lsr.di.unimi.it
%% Make any changes in LSR itself, or in Documentation/snippets/new/ ,
%% and then run scripts/auxiliar/makelsr.py
%%
%% This file is in the public domain.
\version "2.18.0"

\header {
%% Translation of GIT committish: f5fdeccc43889b77f9907d6b80d334921ca89fbc
  texidoces = "
He aquí una partitura vocal estándar para cuatro voces SATB. Con
grupos mayores, suele ser útil incluir una sección que aparezca en
todas las partes.  Por ejemplo, el compás y la armadura casi siempre
son los mismos para todas. Como en la plantilla @qq{Himno}, las cuatro
voces se reagrupan en sólo dos pentagramas.

"
  doctitlees = "Plantilla de conjunto vocal"

%% Translation of GIT committish: c1b0482f63f881bd3f67845e5f76a3e04675ef2a
  texidocja = "
これは標準の 4 パート SATB (ソプラノ、アルト、テナー、バス) ボーカル譜です。@c
もっと大きな合唱では、すべてのパートで使用されるセクションをインクルードすると@c
便利です。例えば、拍子記号と調号はほとんど常にすべてのパートで同じです。@c
@qq{賛美歌} テンプレートのように、4 つのボイスは 2 つの譜にグループ分けされて@c
います。"
  doctitleja = "合唱テンプレート"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Ecco una tipica partitura corale a quattro parti, SATB. Se il complesso è più
ampio, è spesso comodo scrivere gli elementi comuni in un'unica sezione, che
verrà poi inclusa in tutte le parti. Ad esempio, l'indicazione di tempo e
l'armatura di chiave sono quasi sempre le stesse per tutte le parti. Come nel
modello dell'@qq{Inno}, le quattro voci sono ripartite in due soli righi.
"
  doctitleit = "Modello per complesso vocale"

%% Translation of GIT committish: bfc88203ac2572737480e78ef2635ed35b458441
  texidocde = "
Dieses Beispiel ist für vierstimmigen Gesang (SATB). Bei größeren
Stücken ist es oft sinnvoll, eine allgemeine Variable zu bestimmen,
die in allen Stimmen eingefügt wird. Taktart und Vorzeichen etwa
sind fast immer gleich in allen Stimmen.
"

  doctitlede = "Vorlage für Vokalensemble"


%% Translation of GIT committish: 958e95822083954cad00e0a598eb9f12ceba67b9
  texidocfr = "
Ce fichier constitue un canevas standard de partition pour chœur à
quatre voix mixtes.  Lorsque les ensembles s'étoffent, il est judicieux
de recourir à une section spécifique incluse dans chacune des parties,
tout particulièrement pour gérer la métrique et la tonalité qui,
la plupart du temps, sont communes à tous les pupitres.  Comme il est
d'usage pour les hymnes, les quatre voix sont réparties sur deux
portées.

"
  doctitlefr = "Ensemble vocal (simple)"

  lsrtags = "really-simple, template, vocal-music"

  texidoc = "
Here is a standard four-part SATB vocal score. With larger ensembles,
it is often useful to include a section which is included in all parts.
For example, the time signature and key signature are almost always the
same for all parts. Like in the @qq{Hymn} template, the four voices are
regrouped on only two staves.

"
  doctitle = "Vocal ensemble template"
} % begin verbatim

\paper {
  top-system-spacing.basic-distance = #10
  score-system-spacing.basic-distance = #20
  system-system-spacing.basic-distance = #20
  last-bottom-spacing.basic-distance = #10
}

global = {
  \key c \major
  \time 4/4
}

sopMusic = \relative {
  c''4 c c8[( b)] c4
}
sopWords = \lyricmode {
  hi hi hi hi
}

altoMusic = \relative {
  e'4 f d e
}
altoWords = \lyricmode {
  ha ha ha ha
}

tenorMusic = \relative {
  g4 a f g
}
tenorWords = \lyricmode {
  hu hu hu hu
}

bassMusic = \relative {
  c4 c g c
}
bassWords = \lyricmode {
  ho ho ho ho
}

\score {
  \new ChoirStaff <<
    \new Lyrics = "sopranos" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "women" <<
      \new Voice = "sopranos" {
        \voiceOne
        << \global \sopMusic >>
      }
      \new Voice = "altos" {
        \voiceTwo
        << \global \altoMusic >>
      }
    >>
    \new Lyrics = "altos"
    \new Lyrics = "tenors" \with {
      % this is needed for lyrics above a staff
      \override VerticalAxisGroup.staff-affinity = #DOWN
    }
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" {
        \voiceOne
        << \global \tenorMusic >>
      }
      \new Voice = "basses" {
        \voiceTwo << \global \bassMusic >>
      }
    >>
    \new Lyrics = "basses"
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "altos" \altoWords
    \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
}



% ****************************************************************
% end ly snippet
% ****************************************************************

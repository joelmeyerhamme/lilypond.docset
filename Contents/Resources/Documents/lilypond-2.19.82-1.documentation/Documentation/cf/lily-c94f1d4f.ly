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
\sourcefilename "indicating-cross-staff-chords-with-arpeggio-bracket.ly"
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
Un corchete de arpegio puede indicar que se tienen que tocar con la
misma mano notas que están en dos pentagramas distintos. Para hacerlo,
el @code{PianoStaff} se debe configurar para que acepte símbolos de
arpegio de pentagrama cruzado y los símbolos de arpegio se deben
configurar a la forma de corchete en el contexto de @code{PianoStaff}.

(Debussy, Les collines d’Anacapri, m. 65)

"
  doctitlees = "Indicar acordes de pentagrama cruzado con corchetes de arpegio"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
  texidocde = "
Eine Arpeggioklammer kann anzeigen, dass Noten auf zwei unterschiedlichen
Systemen mit der selben Hand gespielt werden sollen.  Damit das notiert
werden kann, muss der @code{PianoStaff}-Kontext so eingestellt werden,
dass er Arpeggios über Systeme hinweg akzeptiert und die Form der Arpeggios
muss auf eine Klammer eingestellt werden.

(Debussy, Les collines d’Anacapri, T. 65)

"
  doctitlede = "Akkorde auf zwei Systemen mit Arpeggioklammern anzeigen"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Un crochet d'arpège peut indiquer que des notes réparties sur deux
portées différentes doivent être jouées par la même main.  Le contexte
@code{PianoStaff} doit accepter ces arpèges « distribués », et les
indications d'arpège du contexte @code{PianoStaff} adopter une allure de
crochet.

(Debussy, Les collines d’Anacapri, mesure 65)

"
  doctitlefr = "Indication d'un accord à cheval sur deux portées par un crochet d'arpège"

  lsrtags = "keyboards, real-music"

  texidoc = "
An arpeggio bracket can indicate that notes on two different staves are
to be played with the same hand. In order to do this, the
@code{PianoStaff} must be set to accept cross-staff arpeggios and the
arpeggios must be set to the bracket shape in the @code{PianoStaff}
context.


(Debussy, Les collines d’Anacapri, m. 65)

"
  doctitle = "Indicating cross-staff chords with arpeggio bracket"
} % begin verbatim

\new PianoStaff <<
  \set PianoStaff.connectArpeggios = ##t
  \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-bracket
  \new Staff {
    \relative c' {
      \key b \major
      \time 6/8
      b8-.(\arpeggio fis'-.\> cis-. e-. gis-. b-.)\!\fermata^\laissezVibrer
      \bar "||"
    }
  }
  \new Staff {
    \relative c' {
      \clef bass
      \key b \major
      <<
        {
          <a e cis>2.\arpeggio
        }
        \\
        {
          <a, e a,>2.
        }
      >>
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
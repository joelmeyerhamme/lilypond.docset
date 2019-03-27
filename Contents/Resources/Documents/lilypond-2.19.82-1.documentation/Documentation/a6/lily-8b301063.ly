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
\sourcefilename "creating-cross-staff-arpeggios-in-a-piano-staff.ly"
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
Dentro de un @code{PianoStaff}, es posible hacer que un arpegio
cruce entre los pentagramas ajustando la propiedad
@code{PianoStaff.connectArpeggios}.

"
  doctitlees = "Crear arpegios que se cruzan entre pentagramas dentro de un sistema de piano"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
In un rigo per pianoforte (@code{PianoStaff}), è possibile far sì che un
arpeggio attraversi i righi impostando la proprietà @code{PianoStaff.connectArpeggios}.

"
  doctitleit = "Creare degli arpeggi che attraversano il rigo del pianoforte"

%% Translation of GIT committish: 0a868be38a775ecb1ef935b079000cebbc64de40
texidocde = "
Arpeggio über mehrere Systeme können in anderen Kontexten als dem
@code{PianoStaff} erstellt werden, wenn der @code{Span_arpeggio_engraver}
in den @code{Score}-Kontext eingefügt wird.

"
  doctitlede = "Arpeggio über mehrere Systeme in anderen Kontexten"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Dans une double portée pour piano (@code{PianoStaff}), un arpège peut
s'étendre sur les deux portées grâce à la propriété
@code{PianoStaff.connectArpeggios}.

"
  doctitlefr = "Arpège distribué sur une partition pour piano"

  lsrtags = "expressive-marks"

  texidoc = "
In a @code{PianoStaff}, it is possible to let an arpeggio cross between
the staves by setting the property @code{PianoStaff.connectArpeggios}.


"
  doctitle = "Creating cross-staff arpeggios in a piano staff"
} % begin verbatim

\new PianoStaff \relative c'' <<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff {
    <c e g c>4\arpeggio
    <g c e g>4\arpeggio
    <e g c e>4\arpeggio
    <c e g c>4\arpeggio
  }
  \new Staff {
    \clef bass
    \repeat unfold 4 {
      <c,, e g c>4\arpeggio
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************
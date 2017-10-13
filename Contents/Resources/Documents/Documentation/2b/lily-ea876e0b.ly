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
\sourcefilename "cross-staff-tremolos.ly"
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
Dado que @code{\\repeat tremolo} espera exactamente dos argumentos
musicales para los trémolos de acorde, la nota o acorde que cambia de
pentagrama en un trémolo que cruza el pentagrama se debe colocar
dentro de llaves curvas junto a su instrucción @code{\\change Staff}.

"
  doctitlees = "Trémolos de pentagrama cruzado"

%% Translation of GIT committish: e0808cc5f4890c5f8f03ed1be48fc911627afea4
  texidocit = "
Dato che @code{\\repeat tremolo} si aspetta esattamente due argomenti musicali per
i tremoli di accordi, la nota o l'accordo che cambiano rigo in un tremolo che
attraversa i righi devono essere posti tra parentesi graffe insieme al
comando @code{\\change Staff}.

"
  doctitleit = "Tremoli attraverso i righi"

%% Translation of GIT committish: 8eae9a75fb3ec1d0b6633103c8a652608c8fa630
  texidocfr = "
Dans la mesure où @code{\\repeat tremolo} requiert deux arguments
musicaux pour un trémolo d'accords, la note ou l'accord de la
portée opposée doit être encadré par des accolades et se voir adjoindre
la commande @code{\\change Staff}.

"
  doctitlefr = "Trémolo et changement de portée"

  lsrtags = "keyboards, real-music, repeats"

  texidoc = "
Since @code{\\repeat tremolo} expects exactly two musical arguments for
chord tremolos, the note or chord which changes staff within a
cross-staff tremolo should be placed inside curly braces together with
its @code{\\change Staff} command.

"
  doctitle = "Cross-staff tremolos"
} % begin verbatim

\new PianoStaff <<
  \new Staff = "up" \relative c'' {
    \key a \major
    \time 3/8
    s4.
  }
  \new Staff = "down" \relative c'' {
    \key a \major
    \time 3/8
    \voiceOne
    \repeat tremolo 6 {
      <a e'>32
      {
        \change Staff = "up"
        \voiceTwo
        <cis a' dis>32
      }
    }
  }
>>



% ****************************************************************
% end ly snippet
% ****************************************************************

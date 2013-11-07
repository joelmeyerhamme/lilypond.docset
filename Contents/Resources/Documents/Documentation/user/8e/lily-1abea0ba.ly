%% Generated by lilypond-book.py
%% Options: [indent=0\mm,verbatim,fragment,quote,ragged-right,alt=[image of music]]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm - 2.0 * 0.4\in
  ragged-right = ##t
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}


{


% ****************************************************************
% ly snippet contents follows:
% ****************************************************************
\sourcefileline 389
{
  \override Score.RehearsalMark #'break-align-symbols = #'(key-signature)
  c1
  \key cis \major

  % La marque sera alignée sur le côté gauche de l'armure
  \once \override Staff.KeySignature #'break-align-anchor-alignment = #LEFT
  \mark \default
  cis1
  \key ces \major

  % La marque sera alignée sur le côté droit de l'armure
  \once \override Staff.KeySignature #'break-align-anchor-alignment = #RIGHT
  \mark \default
  ces1
  \key cis \major

  %  La marque sera alignée sur le côté gauche de l'armure,
  % puis décalée vers la droite de 2 unités.
  \once \override Staff.KeySignature #'break-align-anchor = #2
  \mark \default
  ces1
}



% ****************************************************************
% end ly snippet
% ****************************************************************
}

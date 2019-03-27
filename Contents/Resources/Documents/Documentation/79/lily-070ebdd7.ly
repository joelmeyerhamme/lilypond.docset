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
\sourcefileline 441
% Queste righe definiscono la posizione dei woodblock sul rigo;
% è possibile cambiarla o usare teste di nota speciali
% per i woodblock.
#(define mydrums '((hiwoodblock default #t  3)
                   (lowoodblock default #t -2)))

woodstaff = {
  % Questo definisce un rigo con solo due righe.
  % Definisce anche le posizioni delle due linee.
  \override Staff.StaffSymbol.line-positions = #'(-2 3)

  % Questo è necessario; altrimenti la stanghetta sarebbe troppo corta!
  \override Staff.BarLine.bar-extent = #'(-1.5 . 1.5)
}

\new DrumStaff {
  \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)

  % con questo comando si carica la tabella del nuovo stile di percussioni
  \woodstaff

  \drummode {
    \time 2/4
    wbl8 16 16 8-> 8 |
    wbl8 16 16-> ~ 16 16 r8 |
  }
}



% ****************************************************************
% end ly snippet
% ****************************************************************

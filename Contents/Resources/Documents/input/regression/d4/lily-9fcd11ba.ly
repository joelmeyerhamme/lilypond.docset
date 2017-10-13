%% Generated by lilypond-book.py
%% Options: [alt=[image of music],printfilename,indent=0\mm,texidoc,line-width=160\mm]
\include "lilypond-book-preamble.ly"


% ****************************************************************
% Start cut-&-pastable-section
% ****************************************************************



\paper {
  #(define dump-extents #t)
  
  indent = 0\mm
  line-width = 160\mm
  force-assignment = #""
  line-width = #(- line-width (* mm  3.000000))
}

\layout {
  
}



% ****************************************************************
% ly snippet:
% ****************************************************************
\sourcefilename "/main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/rest-collision.ly"
\sourcefileline 0

\version "2.12.0"
\header{
  texidoc="
Rests should not collide with beams, stems and noteheads.  Rests may
be under beams.  Rests should be move by integral number of spaces
inside the staff, and by half spaces outside.  Notice that the half
and whole rests just outside the staff get ledger lines in different
cases.
"
}

\layout { ragged-right = ##t }

scale =  \relative c' {
  c8 d e f g a b c c d e f g a b c

}
rests =              {
  r r r  r r r r r r r r r r r r r
} 
different = <<  {
  \relative c'' {
    r8 a e4 a e
  }
}\\ {
  
  \relative c'' {
    r1
  }} >>

scales = \context Staff  <<
  {  r1 r2 r2   \scale    c''1 c'2 a'2 \rests  }
  \\
  { a'1 a'2 d'2 \rests r1 r2 r2  \scale }
>>

restsII = \context Staff  {
  r4 r8
  \context Staff << {  r8 } \\{  r8} >>
  \context Staff << { r8} r8 \\{  r8} >>
  \context Staff << { r8} r8 r8 \\ {  r8} >>
  \context Staff << { r} \\ {  r} >>
  \context Staff << { r} r\\ { \stemDown r} >>
  \different	
}


{ 
  \scales 
  \restsII 
}

	






% ****************************************************************
% end ly snippet
% ****************************************************************
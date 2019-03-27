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
\sourcefilename "out-www/sequence-name-midi.ly"
\sourcefileline 0
% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/scripts/midi2ly.py from out-www/sequence-name.midi
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

% included from ./out-www/sequence-name.header
\header {
texidoc="The MIDI sequence generated from a score should get its name
  from the title defined in the score's @code{\header} block (if any).
  The title used for layout can be overridden for MIDI output by
  specifying a separate @code{midititle} in the @code{\header} block.
  If the score does not define a title of its own, and has no enclosing
  @code{\bookpart}, @code{\book}, or top-level scope with a @code{\header}
  block that defines a title, either, the MIDI sequence should get the
  default name."
options=""
}
% end

trackAchannelA = {
  
  \set Staff.instrumentName = "Title shared between layout and MIDI"
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.82          
  
  \time 4/4 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelB = \relative c {
  c1 
  | % 2
  
}

trackB = <<

  \clef bass
  
  \context Voice = voiceA \trackBchannelB
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}



% ****************************************************************
% end ly snippet
% ****************************************************************

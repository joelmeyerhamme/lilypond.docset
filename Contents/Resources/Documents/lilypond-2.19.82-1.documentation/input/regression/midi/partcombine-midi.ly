% Lily was here -- automatically converted by /home/gub/NewGub/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.20/scripts/midi2ly.py from out-www/partcombine.midi
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

% included from ./out-www/partcombine.header
\header {
texidoc="Partcombined music is preserved"
options="--skip"
}
% end

trackAchannelA = {
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.82          
  
  \time 4/4 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {
  
  \set Staff.instrumentName = "staff:one"
  
}

trackBchannelB = {
  
  \set Staff.instrumentName = "staff:solo"
  
}

trackBchannelC = {
  
  \set Staff.instrumentName = "staff:shared"
  
}

trackBchannelD = {
  
  \set Staff.instrumentName = "staff:two"
  
}

trackBchannelE = \relative c {
  \voiceThree
  s4*13 g''2 
}

trackBchannelF = \relative c {
  \voiceTwo
  s4*13 f'4 e 
}

trackBchannelG = \relative c {
  \voiceOne
  s1*2 d''4 c b a 
  | % 4
  <b g > s2 <f d >4 
  | % 5
  e1 
  | % 6
  
}

trackBchannelH = \relative c {
  \voiceFour
  c'4 d e f 
  | % 2
  g a b c 
  | % 3
  
}

trackB = <<
  \context Voice = voiceA \trackBchannelA
  \context Voice = voiceB \trackBchannelB
  \context Voice = voiceC \trackBchannelC
  \context Voice = voiceD \trackBchannelD
  \context Voice = voiceE \trackBchannelE
  \context Voice = voiceF \trackBchannelF
  \context Voice = voiceG \trackBchannelG
  \context Voice = voiceH \trackBchannelH
>>


\score {
  <<
    \context Staff=trackB \trackA
    \context Staff=trackB \trackB
  >>
  \layout {}
  \midi {}
}
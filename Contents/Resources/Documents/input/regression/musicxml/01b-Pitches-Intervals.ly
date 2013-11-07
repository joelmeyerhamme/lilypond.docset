
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/01b-Pitches-Intervals.xml

\header {
    texidoc = "All pitch intervals in ascending 
          jump size."
    title = "Various piches and interval sizes"
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \clef "treble" \key c \major \time 2/4 c4 c4 cis4 ces4 des4 bis4 d4
    b4 dis4 bes4 es4 ais,4 e'4 a,4 eis'4 as,4 fes'4 gis,4 f'4 g,4 fis'4
    ges,4 ges'4 fis,4 g'4 f,4 gis'4 fes,4 as'4 eis,4 a'4 e,4 ais'4 es,4
    bes''4 dis,,4 b''4 d,,4 bis''4 des,,4 ces''4 cis,,4 c''4 c,,4 cis''4
    ces,,4 des''4 bis,,4 d''4 b,,4 dis''4 bes,,4 es''4 ais,,,4 e'''4
    a,,,4 eis'''4 as,,,4 fes'''4 gis,,,4 f'''4 g,,,4 fis'''4 ges,,,4
    ges'''4 fis,,,4 g'''4 f,,,4 gis'''4 fes,,,4 as'''4 eis,,,4 a'''4
    e,,,4 ais'''4 es,,,4 bes''''4 dis,,,,4 b''''4 d,,,,4 bis''''4
    des,,,,4 }


% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        >>
    >>


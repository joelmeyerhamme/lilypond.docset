
\version "2.12.3"
% automatically converted from /main/src/gub/target/linux-x86/src/lilypond-git.sv.gnu.org--lilypond.git-stable-2.12/input/regression/musicxml/75a-AccordionRegistrations.xml

%% additional definitions required by the score:
accRegHMML = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accReg = \markup { \normalsize \musicglyph #"accordion.accDiscant" }
accRegHL = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegHMMML = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegMML = \markup { \normalsize \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegMMM = \markup { \normalsize \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -1 0) \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegML = \markup { \normalsize \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegMM = \markup { \normalsize \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegMMML = \markup { \normalsize \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegHM = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegHMM = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 0.5 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -0.5 0) \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegHML = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegL = \markup { \normalsize \combine
          \raise #0.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegM = \markup { \normalsize \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegHMMM = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons 1 0) \musicglyph #"accordion.accDot"
          \combine
          \raise #1.5 \translate #(cons -1 0) \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }
accRegH = \markup { \normalsize \combine
          \raise #2.5 \musicglyph #"accordion.accDot"
          \musicglyph #"accordion.accDiscant" }

\header {
    texidoc = "All possible accordion 
          registrations."
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \key c \major \time 4/4 | % 1
    \mark \accRegL c4 \mark \accRegM c4 \mark \accRegML c4 \mark
    \accRegMM c4 | % 2
    \mark \accRegMML | % 2
    c4 \mark \accRegMMM c4 \mark \accRegMMML c4 \mark \accRegHL c4 | % 3
    \mark \accRegH | % 3
    c4 \mark \accRegHM c4 \mark \accRegHML c4 \mark \accRegHMM c4 | % 4
    \mark \accRegHMML | % 4
    c4 \mark \accRegHMMM c4 \mark \accRegHMMML c4 \mark \accReg c4 | % 5
    \mark \accRegHML | % 5
    c4 \mark \accRegHML c4 \mark \accRegHL c4 \mark \accRegHML c4 \bar
    "|."
    }

PartPOneVoiceOneLyricsOne =  \lyricmode { "0/0/1" "0/1/0" "0/1/1"
    "0/2/0" "0/2/1" "0/3/0" "0/3/1" "1/0/1" "1/0/0" "1/1/0" "1/1/1"
    "1/2/0" "1/2/1" "1/3/0" "1/3/1" empty "empty M" inval.M "M=0" "M=5"
    }

% The score definition
\new Staff <<
    \context Staff << 
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
        \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
        >>
    >>


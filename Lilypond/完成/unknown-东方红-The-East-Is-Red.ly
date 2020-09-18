\version "2.20.0"
\language "english"

\header {
  title = "东方红(The East Is Red)"
  subtitle = "陕北民歌"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a7landscape")
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo 4=100
}

right = \relative {
  \global
  c'' c8 (d)
  g,2
  f4 f8 (d)
  g2
  c4 c
  d8 (f) d c
  f,4 f8 (d)
  g2
  c4 g4
  f4 e8 (d)
  c4 c'
  g a8 g
  f4 f8 (d)
  g a g f
  g (f) e (d)
  c2
  \bar "|."
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
  >>
  \layout { }
  \midi { }
}

\version "2.20.0"
\language "english"

\header {
  title = "Korobeiniki"
  subtitle = "Russische Volksweise"
  arranger = "Von M. Thienel"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a7landscape")
}

global = {
  \key ef \major
  \numericTimeSignature
  \time 2/4
}

dashPlus = "trill"
right = \relative {
  \global
  g'' d8 ef
  f4 {ef8-+} d
  c4 c8 ef
  g4 f8 ef
  d4 (d8) ef
  f4 g
  d-. c-.
  c-. r
  
  r8 f (f) af
  c4 bf8 af
  g4 (g8) ef
  g4 f8 ef
  d4 d8 ef
  f4 g
  ef-. c-.
  c-. r
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

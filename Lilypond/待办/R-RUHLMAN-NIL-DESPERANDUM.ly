\version "2.20.0"
\language "english"

\header {
  title = "NIL DESPERANDUM"
  subtitle = "WALTZ"
  composer = "R.RUHLMAN."
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4landscape")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key g \major
  \time 4/4
  \tempo "Introduction." 4=80
}

right = \relative c'' {
  \global
  <b-> d g> \f <b-> e g> <c-> e g> <bf-> e g>
  <b-> d g>2 <c-> d fs>
  <b-> d g> r
  r r8 <d b'>
  <<
    { a'8. b16}
    \\
    { <c, fs>4}
  >>
  <b g'>8 d, ([e d]cs d e d)
  \break
  r8 d[e d] cs d e d
  <b' d>2 <b g>2
  a8 g fs a a4 g
  <g e'> <g d'> <fs c'> <g b>
  <g b>2 <fs a>
  <a a'>4 <b g'> <a fs'> <a cs e>
  \break
  <fs a d>2 r
  <b fs'> <b d>
  <<
    { c8 [b] a c c4 b }
    \\
    { e,4 fs fs2 }
  >>
  <e c'>4 <g b> <e a> <e g>
  <d g>2 <d fs>
  <d b'>4 <e a> <d g> <d fs>
}

left = \relative c' {
  \global
  <g, g'>4 <e e'> <c c'> <cs cs'>
  <d-> d'>2 <d-> d'>
  <g g'> r4 b'8. c16
  d2 r4 <d,, d'>
  <g g'> <g' b> <g b> <g b>
  \break
  <g, g'> <g' b> <g b> <g b>
  <g d'> <g d'> <g d'> <g d'>
  <c, e a> <d fs c' d> <g b d> <g b d>
  c b <a d> <g d'>
  <d d'> <d d'> <d d'> <d d'>
  <e d'> <fs d'> <g d'> <a a,>
  \break
  <d, d'>2 r
  <g d'>4 <g d'> <g d'> <g d'>
  <c, a'> <d a'> <ds a'>2
  <e a>4 <d g> <c a'> <cs bf'>
  <d b'> <d b'> <d a'> <d a'>
  g <c, c'> <d b'> <d c'>
  <g b>2 <g, g'>4. <g g'>8
  <<
    { g'1 (g2) }
    \\
    { g,1 (g2) }
  >>
  <b b'>4. <b b'>8
  <<
    { b'1 (b2) }
    \\
    { b,1 (b2) }
  >>
  <d d'>4. <d d'>8
  
  <<
    { d'1 (d1) }
    \\
    { d,1 (d1) }
  >>
  
  <d d'>2
  
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}

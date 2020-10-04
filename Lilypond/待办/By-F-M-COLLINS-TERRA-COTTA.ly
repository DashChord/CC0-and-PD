\version "2.20.0"
\language "english"

\header {
  title = "TERRA COTTA"
  subsubtitle = "POLKA."
  composer = "By F.M.COLLINS"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "a4")
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

global = {
  \key f \major
  \numericTimeSignature
  \time 2/4
  \tempo "Intro." 4=60
}

right = \relative c'' {
  \global
  <c-> c,>4 <c-> c,> <c-> c,>2
  \acciaccatura a'8 <e g>4 \p \> \acciaccatura a8 <ds, fs>4
  \acciaccatura a'8 <e g>4  c'8-. r \!
  \bar "|."
  \break
  \tempo "Polka."
  \acciaccatura d,8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>4 \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  \acciaccatura d8 <bf c> <bf c> <bf d>4
  \break
  \acciaccatura d8 \< <a c> <a c> <a-> c a'>4 \!
  <b g'>8 <b f'> <b e> <b d>
  <b-> e> \< <b-> d>  <b-> c>4 \>
  \acciaccatura d8 \! <a c>4 \mf \acciaccatura d8 <gs, b>4
  \acciaccatura d'8 <a c>4 \acciaccatura d8 <gs, b>4
  \break
  \acciaccatura d'8 <a c>8 <a a'> <a f'> <a d>
  <a~ c~>4 <a c>8 r
  <bf d> \f <bf d> <bf d a'>4
  <a c>8 <a c> <a c g'>4
  <c g'>8 <bf f'> <bf d> <bf e>
  <a-> c f> \< [<a-> c f> <a-> c f>] \! r
  \bar "|."
  \key bf \major
  \break
  d,8. ef16 e8 f8
  fs g c8. bf16
  a8-> [<ef' g>] \< a,-> <ef' f>
  bf-> [<d g>] bf-> <d f> \!
  d,8. ef16 e8 f
  \break
  a8. bf16 b8 c
  <bf c> \f \< <bs c> <bf d> <bf e>
  <a-> f'> [<a-> f'> <a-> f'>] r \!
  ef8. f16 f8 g
  gs a c8. bf16
  \break
  a8-> [<ef' g>] \< a,-> <ef' f>
  bf-> [<d g>] bf-> <d f> \!
  d,8. \mf ef16 e8 f
  fs8 g c8. bf16
  a8 \<  <ef' g> a, <e' f>
  <bf-> d bf'>8 \f [<bf-> d bf'> <bf-> d bf'>] r \!
  \bar "|."
  \key f \major
  
}

left = \relative c' {
  \global
  <c,-> c,>4 <c-> c,>4 <c-> c,>2
  \clef treble <c' g' bf>4 <c fs a> <c g' bf> r
  \clef bass
  f,8 <a c> f <b d>
  f <a c> f <b d>
  f <a c> c, <a' c>
  f <a c> c, <a' c>
  e <g bf c> c, <g' bf c>
  
  f <a c> f <a c>
  g <b d f> g <b d f>
  <c-> e> <d-> f> <e-> g>4
  f,8 <a c> f <b d>
  f <a c> f <b d>
  
  f <a c> c, <a' c>
  f <a c> f <a c>
  bf, <g' bf> bf, <g' bf>
  c, <f a c> c <f a c>
  e <a c d> c, <a' c d>
  <f-> a c> [<f-> a c> <f-> a c>] r
  
  bf, <f' bf> d <f bf>
  e <g c> e <g c>
  f <a c e> f <a c e>
  bf, <f' bf d> <f bf d> r
  bf, <f' bf> d <f bf>
  
  c <f a c> c <f a c>
  c <g' bf c> c, <g' bf c>
  <f'-> c> [<f-> c> <f-> c>] r
  bf,, <f' bf> d <f bf>
  e <g c> e <g c>
  
  f <a c e> f <a c e> bf, [<f' bf d> <f bf d>] r
  bf, <f' bf> d <f bf>
  e <g c> e <g c>
  a <c e g> a <c e g>
  <bf-> d> [<bf-> d> <bf-> d>] r
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

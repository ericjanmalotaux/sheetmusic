\version "2.24.2"
\header {
  title = "Nymphes des Bois"
  subtitle = "La Deploration de la morte de Johannes Ockeghem"
  composer = "Josquin des Prez"
  arranger = "Transcription Marianne Hund"
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.2 }
}


superiusMusic = \relative d' {
  \clef treble
  \key e \phrygian
  \time 3/2
  \set Timing.measureLength = #(ly:make-moment 6)
    
  e\breve g a1. b2 c\breve r\breve d c1 c c a bes\longa a\longa
  r\breve*3
  c\breve c1 c bes1. g2 g1 g a1. g2 f1 f e\longa r\breve r f f1 f
}

altusMusic = \relative d' {
  \clef "treble_8"
  
  e\breve e a, e'\longa d\breve e c d d\breve. e1d f1. e2 d1 c\breve d
  c1 r a\breve bes bes a r1 d, e c e e d\breve d' d1 d a1.b2 
}

tenorMusic = \relative d {
  \clef "treble_8"
  
  e\longa f\breve e e r e\breve. f1 g\breve g f1 e f\breve f e r
  e\breve. f1 g\breve g f\longa g\breve g bes g f\longa
}

quintaMusic = \relative d' {
  \clef "treble_8"
  
  r\breve*3 a\breve a d, a'\longa r\breve r a\breve a1 a a bes1. a2 a\breve g1
  a1. bes2 c\breve d d\breve. d1 a1. bes2 c\breve r1 c1 d1. c2 bes1 bes a\breve r1 d,
}

bassusMusic = \relative d {
  \clef bass
  
  r\breve*3 a\breve a bes a\longa g\breve r1 g1 d' cis d\breve d a1 c bes\breve a\longa g\breve
  g1 g d'\breve d c1.c2 c1 c g\longa d'\breve d1 d
}


musicDefinition = \new StaffGroup <<
  \new Staff \with {
    instrumentName = "Superius"
    shortInstrumentName = "S"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \superiusMusic
    }
  >>
  \new Staff \with {
    instrumentName = "Altus"
    shortInstrumentName = "A"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \altusMusic
    }
  >>
  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \tenorMusic
    }
  >>
  \new Staff \with {
    instrumentName = "Quinta pars"
    shortInstrumentName = "Qp"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \quintaMusic
    }
  >>
  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "voice oohs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \bassusMusic
    }
  >>
>>

layoutDefinition = \layout {
  \override Staff.NoteHead.style = #'baroque
  \override Staff.TimeSignature.style = #'neomensural \context {
    \Staff
    measureBarType = "-span|"
  }
}

midiDefinition = \midi {
  \tempo 1=120
}

\book {
  \score {
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}
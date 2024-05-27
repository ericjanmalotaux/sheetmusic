\version "2.24.1"
#(set-default-paper-size "a4")

\paper {
}

\header {
  title = "Nymphes des Bois"
  subtitle = "La Deploration de la morte de Johannes Ockeghem"
  composer = "Josquin des Prez"
  arranger = "Transcription: Marianne Hund"
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.2 }
}

alla-breve = {
  \time 2/1
  \set Timing.measureLength = #(ly:make-moment 4)
  \once \override Staff.TimeSignature.stencil =
  #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"timesig.C22" #}))
}


musicDefinition = \new StaffGroup <<
  \new Staff \with {
    instrumentName = "Superius"
    shortInstrumentName = "S"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = superius \relative d' {
      \clef treble
      \key e \phrygian
      \time 3/2
      \set Timing.measureLength = #(ly:make-moment 6)

      e\breve g a1. b2 c\breve r\breve d c1 c c a bes\longa a\longa r\breve*3
      c\breve c1 c bes1. g2 g1 g a1. g2 f1 f e\longa r\breve r
      f f1 f e\breve d g g1 g g1. a2 b1 b c1. b2 a1 g2 f e1 r
      g\breve g1 g d\breve r1 d a'1. a2 a1 a e\breve r r
      a a1 a g\longa f\breve r1 f g g a b c\breve b\breve. c1 a\longa
      c\breve c1 c b1. g2 g\breve r r r1 b c1. b2 a1 g f\breve e1 r
      g\breve a1. bes2 c1 c f, f bes bes bes bes a\breve g\longa
      e\breve e1 e f\breve d e1 e e e f1. d2 d\longa r\breve*2
      a'\breve a1 a b\breve c c1. c2 c1 c bes\breve a
      c1. b2 g1 a bes\breve a
      c1. b2 a1 g a\breve g1
      e\breve e1 e e g1. e2 e\longa.

      \alla-breve

      \repeat volta 2 {
        g\breve g1 g a\breve. a1 c1. b2 a1 a gis\breve
        b c a b g a f g1. e2 e\breve
      }
      g\breve g1 g c c g1. a2 b\breve d\breve. b1 b\breve g\breve. e1 e\maxima.

      \fine
    }
  >>
  \new Lyrics = repeatSuperius \lyricsto superius {
    Nym -- phes des - bois, dé -- es -- ses des fon -- tai -- nes
    Chan -- tres ex -- pers _ _ de tou -- tes na -- ti -- ions,
    Chan -- géz voz vois _ tant clè -- res et _ _ haul -- tain _ _ _ _ nes
    En cris tren -- chans et la -- men -- ta -- ti -- ons.
    Car A -- tro -- pos _ tres ter -- ri -- ble  sa -- trap -- _ _ pe,
    A vos -- tre O -- cke -- ghem a -- trap -- pé en sa trap -- pe.
    Vray tré -- _ _ so -- rier de mu -- si -- que chief d'oeu -- vre.
    Doct, é -- lé -- gant de corps et non point trap -- _ pe.
    Grant dom -- ma -- ge est que la terre le cou -- vre,
    que la terre le coeu -- vre,
    que la terre le coeu -- vre,
    que la terre le coeu -- _ vre.
    <<
      {
        A -- cous -- trés vous d'ha -- bis _ _ de doeul,
        Jos -- quin, Pier -- son, Bru -- mel, Com -- pè -- _ re.
      }
      \new Lyrics
      \with { alignBelowContext = repeatSuperius } {
        \set associatedVoice = superius
        Et pleu -- rez gros -- ses lar -- _ _ mes d'oeuil:
        per -- du a -- vez vos -- tre bon pè -- _ re
      }
    >>
    Re -- qui -- e -- scat in pa -- _ ce. A -- _ men, A -- _ men.
  }


  \new Staff \with {
    instrumentName = "Altus"
    shortInstrumentName = "A"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = altus \relative d' {
      \clef "treble_8"

      e\breve e a, e'\longa d\breve e c d d\breve. e1d f1. e2 d1 c\breve d c1 r
      a\breve bes bes a r1 d, e c e e d\breve
      d' d1 d a1.b2 c\breve r1 b1 b b c1. d2 e1 e d\breve c\longa r1
      e e e d\breve r1 b a a d d c\breve
      c, d bes c c'c1 1 c\breve r1 a bes a g1.f2 e1 d c\breve d e1 c d\breve
      a' a1 a g g g\breve r1 g a1. g2 f1 e d\breve e r r
      c' c1 c c\breve r1 c d1. d2 d1 d d\breve c\longa b\breve g
      c a1 a bes\breve r1 g c c a a bes1. g2 g\breve d'\longa r1
      d d d d,\breve e c1 c e1. fis2 g1 d\breve a' e1
      c'\breve bes1 d1. e2 f d e1 a,1. b2 c1
      a1. b2 c1 g a b c\breve b\maxima

      \alla-breve

      \repeat volta 2 {
        e\breve e1 e f\breve. f1 e c d\breve e\longa r1
        e f\breve d e c d1 d b\breve c
      }
      b\breve c1 c c c c\breve b b\longa r\breve b\breve c c\longa b b

      \fine
    }
  >>
  \new Lyrics = repeatAltus \lyricsto altus {
    Nym -- phes des bois, dé -- es -- _ ses des __ _ fon -- tai -- _ _ _ _ nes,
    Chan -- tres ex -- pers de tou -- tes na -- ti -- ons.
    Chan -- géz voz vois __ _ _ tant cle -- res -- et __ _ _ haul -- tai -- nes
    En cris tren -- chans et la -- men -- ta -- ti -- ons.
    Car A -- tro -- pos, Car A -- tro -- pos, tres __ _ _ ter -- ri -- ble sa -- trap __ _ _ _ pe,
    A vos -- tre O -- cke -- ghem a -- trap -- pé en sa trap -- pe.
    Vray tre -- so -- rier de mu -- si -- que chief dóeu vre, __ _ _
    Doct, e -- le -- gant de corps et no point tra -- pe, tra -- pe.
    Grant dom -- mai -- ge est que la terre __ _ _ le coeu -- vre,
    que la terre __ _ _ _ le coeu -- _ vre,
    que __ _ _ la terre le coeu -- vre,
    <<
      {
        A cous -- trés vous d'ha -- bis __ _ de doeul,
        Jos -- quin, Pier -- son, Bru -- mel, Com -- pè -- re.
      }
      \new Lyrics \with { alignBelowContext = repeatAltus } {
        \set associatedVoice = altus
        Et pleu -- res gros -- ses lar -- _ mes doeuil
        per -- du a -- ves vos -- tre bon pe -- re
      }
    >>
    Re -- qui -- e -- scat in pa -- _ ce. A -- _ men, A -- men.
  }

  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = tenor  \relative d {
      \clef "treble_8"

      e\longa f\breve e e r e\breve. f1 g\breve g f1 e f\breve f e r
      e\breve. f1 g\breve g f\longa g\breve g bes g f\longa g\maxima.
      a\longa  g\maxima f\longa r1 e( e1.) f2 g1 f\breve e1 f\breve f e\longa
      r\breve*2 r\breve*3 g\breve g1 e f\breve e\longa. r\breve*3
      r\breve*3  r\breve*2 g\longa f\longa. g\breve f\longa e\breve e
      r\breve*3 r\breve g\longa f\breve g g1 bes\breve a1 g\breve fis\longa
      gis\breve a\longa g\longa f\breve e\breve. fis1 g\breve f e f1 e f\breve e\maxima..

      \alla-breve

      \repeat volta 2 {R\longa*8}
      e'\breve e1 e e e e\breve d d d e\longa e\maxima..

      \fine
    }
  >>
  \new Lyrics = repeatTenor \lyricsto tenor {
    Re -- _ qui em e -- _ _ ter -- _ _ _ nam __ _
    do -- _ _ na __ _ e -- is _ _ _
    _ _ _ _ 
    do -- _ _ _ _ mi ne __ _
    Et lux __ _ _ _
    per -- pe -- _ _ tu -- a
    lu -- _ ce -- at _ _ _ _ e -- _ _ _ _ _ _ _ _ _ is. __ _ _
    Re -- qui -- es -- scat in pa -- _ ce.
    A -- _ men.
  }

  \new Staff \with {
    instrumentName = "Quinta pars"
    shortInstrumentName = "Qp"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = quintus \relative d' {
      \clef "treble_8"

      r\breve*3
      a\breve a d, a'\longa r\breve r a\breve a1 a a bes1. a2 a\breve g1 a1. bes2 c\breve
      d d\breve. d1 a1. bes2 c\breve r1 c1 d1. c2 bes1 bes a\breve r1
      d, e c d\breve e1 d e e e c d\breve e r1
      c' c c g\breve r1 g d'1. d2 d1 d a\longa c\breve bes\longa a
      e'\breve e1 e d\breve r1 d c1. b2 a1 g1. fis4 e fis1 g d' b  e1. c2 d1 e r
      e\breve e\breve. e1 e1. d2 c b a1 r a\breve gis1 a1. b2 c d e1. c2 d1 e\longa
      a,\breve a1 a bes bes bes bes, d d f1. e2 c\breve r1
      g'\breve e1 e a\breve f1 g g e c e\breve d\longa r1 g\breve fis1 b\breve r1
      a a a d\breve c e\breve. e1 d d f1. e2 c\breve r1
      c, d1. e2 f g a1. b2 c1. d2 e\breve d1
      e1. d2 c1 b a\breve g\maxima

      \alla-breve

      \repeat volta 2 {
        b\breve b1 g d'\breve d c1 a1. g2 a1 b\breve r1
        e\breve c d b c a b1 g\breve a
      }
      g e1 e a a e1. fis2 g\longa r\breve g\breve. e1 e\maxima..

      \fine
    }
  >>
  \new Lyrics = repeatQuintus \lyricsto quintus {
    Nym -- phes des bois, dé -- es -- ses des __ _ fon -- tai -- _ _ _ nes
    Chan -- tres ex -- pers _ _ de tou -- tes na -- ti -- ions,
    Chan -- géz voz vois __ _ tant clè -- res et haul -- tain -- nes
    En cris tren -- chans et la -- men -- ta -- ti -- ons. __ _ _ _
    Car A -- tro -- pos tres ter -- ri -- ble  sa -- _ _ _ trap -- _ _ _ _ _ pe,
    A vos -- tre O -- _  cke -- _ ghem a -- _ trap -- _ pé __ _ en sa trap -- pe.
    Vray tré -- so -- rier de mu -- sique et chief d'oeu -- _ vre.
    Doct, é -- lé -- gant de corps et non point trap -- pe, trap -- _ pe.
    Grant dom -- ma -- ge est que la terre le cou -- _ vre,
    que la __ _ _ _ terre __ _ _ le coeu -- vre,
    que la terre le coeu -- vre.
    <<
      {
        A -- cous -- trés vous d'ha -- bis _ _ de doeul,
        Jos -- quin, Pier -- son, Bru -- mel, Com -- pè -- re.
      }
      \new Lyrics
      \with { alignBelowContext = repeatQuintus } {
        \set associatedVoice = quintus
        Et pleu -- rez gros -- ses lar -- _ _ mes d'oeuil:
        per -- du a -- vez vos -- tre bon pè -- re
      }
    >>
    Re -- qui -- e -- scat in pa -- _ ce. A -- _ men, A -- _ men.
  }

  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "voice oohs"
  } <<
    \new Voice = bassus \relative d {
      \clef bass

      r\breve*3
      a\breve a bes a\longa g\breve r1 g1 d' cis d\breve d a1 c bes\breve a\longa
      g\breve g1 g d'\breve d c1.c2 c1 c g\longa
      d'\breve d1 d c1. b2 g\breve r1 g c c c c b\breve a\longa
      c\breve c1 c g\breve r1 g d'1. d2 d1 d a\longa bes1. a2 g\breve f\longa
      c'\breve c1 c d\breve r1 d e1. d2 c1 b a\breve g r\breve*2
      a\breve a1 a c1. d2 e\breve r1 e f1. e2 d1 c b\breve a r r
      c c1 c f,\breve r1 f bes bes g g bes1. a2 f\breve r\breve*2
      c'\breve a1 a d\breve r1 g, c1. c2 c1 c d\breve g,\longa r\breve 
      g d'\breve. d1 b\breve a\longa c1. c2 g1 g d'\breve a1
      c1. b2 a1 g g d'\breve a
      r\breve*2 c1. b2 a1 gis a\breve <e e'>\maxima

      \alla-breve

      \repeat volta 2 {e'\breve e1 e d\breve. d1 a'1. g2 f1 f e\longa a\breve f g e f d1 d e\breve a,}
      e'c1 c a a c\breve g\longa g'\breve. e1 e\breve r1 c\breve a1 a\breve <e' e,>\maxima

      \fine
    }
  >>
  \new Lyrics = repeatBassus \lyricsto bassus {
    Nym -- phes des bois, __ _ dé -- es -- ses des fon -- tai -- _ _ nes
    Chan -- tres ex -- pers de tou -- tes na -- ti -- ions,
    Chan -- géz voz vois __ _ _ tant clè -- res et haul -- tain -- nes
    En cris tren -- chans et la -- men -- ta -- ti -- ons. __ _ _ _ _
    Car A -- tro -- pos tres ter -- ri -- ble  sa -- trap -- pe,
    A vos -- tre O -- cke -- ghem a -- trap -- pé en sa trap -- pe.
    Vray tré -- so -- rier de mu -- sique et chief d'oeu -- _ vre.
    Doct, é -- lé -- gant de corps et non point trap -- pe
    Grant dom -- ma -- ge est que la terre le cou -- vre,
    que __ _ la terre le coeu -- vre,
    que la terre le coeu -- vre.
    <<
      {
        A -- cous -- trés vous d'ha -- bis _ _ de doeul,
        Jos -- quin, Pier -- son, Bru -- mel, Com -- pè -- re.
      }
      \new Lyrics
      \with { alignBelowContext = repeatBassus } {
        \set associatedVoice = bassus
        Et pleu -- rez gros -- ses lar -- _ _ mes d'oeuil:
        per -- du a -- vez vos -- tre bon pè -- re
      }
    >>
    Re -- qui -- e -- scat in pa -- ce. A -- _ men, A -- men, A -- men.
  }

>>

layoutDefinition = \layout {
  \override Staff.NoteHead.style = #'baroque
  \override Staff.TimeSignature.style = #'neomensural \context {
    \Staff
    measureBarType = "-span|"
  }
}

midiDefinition = \midi {
  \tempo \breve=60
}

\book {
  \score {
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}
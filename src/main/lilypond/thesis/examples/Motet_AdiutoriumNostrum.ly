%
% Anonymous motet Adiutorium nostrum
% Sources:
%	[WIEN11883]
%
% Copyright: Eric Jan Malotaux <e.j.malotaux@gmail.com>, 2024
%

\version "2.24.2"
#(set-global-staff-size 20)
#(set-default-paper-size "a4")

\paper {
%  systems-per-page = #4
}

\header {
  title = "Adiutorium nostrum"
  composer = "Anonymous"
  opus = "LonBLR 8 G.VII, fol. 4'-6."
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.2 }
  copyright = \markup \column {
    \line { " " } % More space between music and Copyright.
    \line { " " }
    \line { " " }
    \line {
      \smaller {
        \char ##x00A9 2024 by Eric Malotaux
      }
    }
  }
}


perfectus = #(define-music-function (parser location notes) (ly:music?)
               (_i "Een gedeelte in drie-eende maat, die evenlang duurt als twee-eende maat")
               #{
                 \scaleDurations 2/3 {
                   \time 3/2
                   \once \override Staff.TimeSignature.style = #'single-digit
                   \set Timing.measureLength = #(ly:make-moment 1)
                   #notes
                 }
               #}
               )

superiusIncipit = \incipit { \clef "mensural-c1" \key f \major \time 2/2 \relative c' {f\breve} }

superiusMusic = \relative d' {
  \clef treble
  \key f \major
  \time 2/2

  f1 a2 c2. c4 c2 c c2. bes8 a g2 r g bes2. bes4 bes2 bes2. a8 g f4. g8 a2 a a1
  R1*2 r2 g2 bes2. bes4 bes2. a8 g f4. e8 f4 g2 f e4 f1
  R\longa R\breve
  r4 g4 a bes c2. bes 8 a bes4 c a2 g f
  R1*3 r4 c'2 a4 bes2 g4. f8 g4 a f g e c f2. e8 d e\breve r2
  R1*4 r2 r4 g4 a4. bes8 c2. bes8 a bes4 c4. bes8 a2 g8 f g4 a2 g8 f e4 f d c r4 c d e f d e1
  r4 a2 a4 a bes4. a8 a2 g4 a4. g8 a4 f g a2 g8 f e4. f8 g4 a4. g8 f2 e4 f\breve.\fermata
  
  \perfectus {
    c'1 a2 bes1 g2
    R1.*2 c1 a2 bes1 g2 r a1 f2 g1 
  }
 
  \time 2/2
  e2 r4 c' c2 bes a2. g4 a2 bes a1
  r4 c2 a4 bes g a f g4. f8^[ e d] c2 f e4 f1
  R1*3 r4 c'2 a4 bes g a f g4. f8^[ e d] c2 f e4 f\breve\fermata
  
  \fine
}

superiusLyrics = \lyricmode {
  Ad -- iu -- to -- ri -- um nos -- trum __ _ _ _ in no -- mi -- ne Do -- _ _ _ _ _ mi -- ni
  in no -- mi -- ne __ _ _ _ _ _ Do -- _ mi -- ni.
  O -- rat plo -- rat plo -- _ rat [et] ex -- o -- rat
  Ka -- the -- ri -- na __ _ _ _ _ _ _ _ si -- _ _ bi __
}

altusIncipit = \incipit { \clef "mensural-c3" \key f\major \time 2/2 \relative c' {r\longa c\breve} }

altusMusic = \relative c' {
  \clef "treble_8"
  \key f \major
  \time 2/2

  R\breve c1 e2 g2. g4 g2 g g2. f8 e d1 r2 d f2. f4 f2 f2. e8 d c4. bes8 c4 d4. c8 c2 b4 c2 r2
  g bes2. c4 d1 r4 d2 bes4 c2 c1
  R1*5 r2. c4 d4. e8 f2. e8 d e4 f d c d8 c f2 e4 f2
  R1*3 r2. c4 d bes c2 e d \[c a\] b c1 c2
  R1*7 r4 c d e f2. e8 d e4 f d2 c4 a bes c f,4. g8 a bes c2 b4 \[c2 g\] c
  r4 f2 f4 f f d e f4. e8 c4 d4. c8 c2 b4 c1
  r2. c2 c4 a f c'2 d c1\fermata
  \perfectus { r2 f1 d2 es1 c2 r1 R1. r2 f1 d2 es1 c2 r2 d1 bes2 c }
  \time 2/2
  c2 r4 e f2 d f2. e4 f2 d f1
  r2 f d4 es c d bes c4. bes8 a g f4 a g2 f1
  R1*3 r4 f' e f d es c d bes g c2 a4 bes c2 c\breve\fermata
  
  \fine
}

altusLyrics = \lyricmode {
  Ad -- iu -- to -- ri -- um nos -- trum __ _ _ _  in no -- mi -- ne Do -- _ _ _ _ _ _ _ _ mi -- ni
  in no -- mi -- ne Do -- _ mi -- ni
  O -- rat __ _ _ _ _ _ plo -- ra et ex -- _ _ o -- rat
  Ka -- _ the -- ri -- na -- _ _ _ si -- bi
}

tenorIncipit = \incipit {
  \clef "mensural-c4" \key f\major \time 2/2 \relative c {
    r\breve f}
}

tenorMusic = \relative d {
  \clef "treble_8"
  \key f \major
  \time 2/2
  
  R1 f a2 c2. c4 c2 c c2. bes8 a g2 r g bes2. bes4 bes2. a8 g f4. g8 a4 f a4. bes8 c2 r4
  f, g a4. g8 g2 f4 g1
  r2 g bes2. bes4 bes2 a4 bes4. a8 g f g2 f1
  r2 f g a bes g4 a2 g8 f g4 c, c'4. bes8 a4 . g16 f g2 f
  R1*3 r2. f4 a4. bes8 c2. bes8 a bes4 c a2 g f1
  r2. c'2 a4 bes2 g4 a4. g8 f e f4 g8 f g2
  r4 g a bes c2. bes8 a bes4 c4. bes8 a2 g8 f g4 a4. g8 f2 e8d e4 f d \[c2 f\] e4 f1
  R1*5 r2. c'2 c4 a f c'2 d c4 d2 c8 bes c4. bes8 c4 a b c f,2
  g4 c4. bes8 a g \[f2 g\] \[f2. a2\] f4 bes2 a1\fermata
  \perfectus {
    R1.*2 c1 a2 bes1 g2 R1.*2 c1 a2 bes1 g2
  }
  \time 2/2
  r2.g4 a2 bes c2. c4 c2 bes c\breve
  R1*3 r4 c2 a4 bes g a f g4. f8^[ e d] c2 f e4 f8 g a bes c4 d bes c a bes g c4. bes8 a g \[f2 g\] f\breve\fermata
  
  \fine
}

tenorLyrics = \lyricmode {
  Ad -- iu -- to -- ri -- um nos -- trum __ _ _ _ in no -- mi -- ne __ _ _ Do -- _ _ _ mi -- _ ni
  Do -- _ _ _ _ mi -- ni in no -- mi -- ne Do -- _ _ _ _ mi -- ni
  quis non con -- fi -- te -- bi -- _ _ _ tur ti -- _ _ _ _ _ bi
  O -- rat plo rat __ _ _ _ et ex -- o -- rat
  Ka -- the -- ri -- na si -- _ _ _ _ _ _ bi
  te o -- ran -- tes _ _ _ _ _ _ _ _ _ _ _ _ _ _ de -- _ pre -- ca -- _ _ mur
}

bassusIncipit = \incipit {
  \clef "petrucci-f" \key f\major \time 2/2 \relative c { r\longa r\longa c\breve }
}

bassusMusic = \relative d {
  \clef bass
  \key f \major
  \time 2/2
  
  R\longa c1 e2 g2. g4 g2 g g2. f8 e d2 r d f2. f4 f2 e4 f4. e8 d c d2
  c es 2. es4 es2. d8 c bes2 r4 d2 g,8 a bes c d4 c2 f, r
  c' d e f d4 es2 d8 c d2 c4. d8 e f g4. f8 f2 e4 f2
  R1*3 r4 c d4. e8 f2. e8 d e4 f d c d8 c f2 e4 f1
  R1 r4 c d bes c2 d1 c r2
  r2. c4 d e f2. e8 d e4 f4. e8 d2 c8 bes c4 a bes c \[f,2 g\] f1. r2
  R1*3 r4 f'2 e4 d2 c1 r4 f2 f4 d bes f'2 g f1  e4 c d2 c4. d8 e4 f d2 c f1. bes,2 f'1\fermata
  \perfectus {
    R1.*2 r2 f1 d2 es1 c2 r1 R1. r2 f1 d2 es1
  }
  \time 2/2
  c2 r4 c f2 g f2. c4 f2 g f\breve
  R1*3 r2 f2 d4 es c d bes c4. bes8 a g f4 a g2 f
  r4 f' g es f d es2 c4 f2 e8 d c2 f,\breve\fermata
  
  \fine
}

bassusLyrics = \lyricmode {
  Ad -- iu -- to -- ri -- um nos -- trum __ _ _ _ in no -- mi -- ne Do -- mi -- _ _ _ ni,
  in no -- mi -- ne __ _ _ _ Do -- _ _ _ _ _ mi -- ni
  quis non con -- fi -- te -- bi -- _ _ _ tur __ _ _ _ _ _ _  ti -- bi
  O -- rat __ _ _ _ _ _ plo -- rat et ex -- _ _ o -- rat
  Ka -- the -- ri -- na si -- bi
}

musicDefinition = \new ChoirStaff <<

  \new Staff \with {
    instrumentName = ""
    shortInstrumentName = ""
    midiInstrument = "choir aahs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \superiusIncipit
      \superiusMusic
    }
  >>
  \new Lyrics \lyricsto superius \superiusLyrics

  \new Staff \with {
    instrumentName = "Contratenor"
    shortInstrumentName = "C"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = altus {
      \altusIncipit
      \altusMusic
    }
  >>
  \new Lyrics \lyricsto altus \altusLyrics

  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = tenor {
      \tenorIncipit
      \tenorMusic
    }
  >>
  \new Lyrics \lyricsto tenor \tenorLyrics

  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = bassus {
      \bassusIncipit
      \bassusMusic
    }
  >>
  \new Lyrics \lyricsto bassus \bassusLyrics

>>

layoutDefinition = \layout {
  \enablePolymeter
  indent = 5\cm
  incipit-width = 3\cm
  \override Staff.NoteHead.style = #'baroque
  \context {
    \Staff
    suggestAccidentals = ##t
  }
  \context {
    \Voice
    \remove Note_heads_engraver
    \consists Completion_heads_engraver
  }
}

midiDefinition = \midi {
  \enablePolymeter
  \tempo 2=75
}

\book {
  \score {
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }
}
%
% Missa Adiutorium Nostrum
% Sources:
% - Österreichische Nationalbibliotheek Cod. 11883, fol. 277v-286r.
% - Münschen, Bayerische Staatsbibliotheek, Handschriften-Inkunabelsammlung, Musica MS F, fol. 72v-85r.
%
% Copyright: Eric Jan Malotaux <e.j.malotaux@gmail.com>, 2024.
%

\version "2.24.1"
#(set-global-staff-size 19)
#(set-default-paper-size "a4")

\paper {
  system-count = 13
  page-count = 4
}

\header {
  title = "Missa Adiutorium nostrum"
  composer = "Anonymous"
  tagline = \markup \smaller \smaller { Engraved by Eric Malotaux with LilyPond 2.24.1 }
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

alla-breve = {
  \time 2/1
  \once \override Staff.TimeSignature.stencil =
  #(lambda (grob) (grob-interpret-markup grob #{ \markup \musicglyph #"timesig.C22" #}))
}

perfectus = #(define-music-function (parser location notes) (ly:music?)
               (_i "Een gedeelte in drie-eende maat, die evenlang duurt als twee-eende maat")
               #{
                 \scaleDurations 2/3 {
                   \time 3/1
                   \once \override Staff.TimeSignature.style = #'single-digit
                   \set Timing.measureLength = #(ly:make-moment 2)
                   #notes
                 }
                 \alla-breve
               #}
               )

superiusKyrieIncipit = \incipit { \clef "mensural-c1" \key f \major \time 2/2 \relative d' {f\breve a1 c1.} }

superiusKyrie = \relative d' {
  \clef treble
  \key f \major
  \alla-breve
  %Kyrie
  f\breve a1 c1. c2 c1 c1. bes4 a g\breve r1
  g1 bes1. bes2 bes1. a4 g f1. g2 a\longa
  R\longa*3
  r1 a bes1. bes2 bes1 a2 bes2. a4 g f g1 f bes1. bes2 bes a4 g f2 g a g1 f e2 f\longa
  \section
  
  %Christe
  r1 f \[g a\] bes1 g2 a1 g4 f g2. a4 bes1 g2 c1 bes4 a g1 f r
  R\longa*2
  r1 r2 g a2. bes4 c1. bes4 a bes2 c a2. bes4 c2 d1 c b2 c\breve
  R\longa R\breve
  r2 c1 a2 bes1 g2 c1 bes4 a g2 a f g1 e2 f1. e4 d e2. f4 g2 a f g1 e2 f1.e4 d e\longa
  
  \section
  \sectionLabel "Kyrie"
  \perfectus {
    c'1 c a bes\breve g1 R\breve.*2 c1 c a bes\breve g1 r a a f g\breve
  }
  e\breve r2 g1 g2 a1 bes a2.bes4 c d c1 bes4 a g2 c1 a2 bes1 a\breve. r1
  R\longa r1 c a2 bes g a f g2. f4 e d c2 f1 e2 f c'1 a2 bes g a f g2. f4 e d c1 f e2 f\longa
  
  \fine
}

superiusLyrics = \lyricmode {
}

altusKyrieIncipit = \incipit { \clef "mensural-c3" \key f \major \time 2/2 \relative d { r\longa. c'\breve e1 g1. }}

altusKyrie = \relative d' {
  \clef treble
  \key f \major
  \alla-breve
  \fine
}

altusLyrics = \lyricmode {
}

tenorKyrieIncipit = \incipit {
  \clef "mensural-c4" \key f \major \time 2/2 \relative d { r\breve f\breve a1 c1. }
}

tenorKyrie = \relative d {
  \clef "treble_8"
  \key f \major
  \alla-breve
  
  R\breve f\breve a1 c1. c2 c1 c1. bes4 a g\breve r1 g bes1. bes2 bes1. a4 g f1. g2 a1 r
  R\longa r1 g bes1. bes2 bes1 a2 bes2. a4 g f g1 f\breve
  R\longa R\breve r1 g1 bes1. bes2 bes1 a2 bes2. a4 g f g1 f\longa
  
  \section \sectionLabel "Christe"
  
  R\longa*3 r2 f2 a2. bes4 c1. bes4 a bes2 c a g2. a4 bes c d2. c8 bes a2 c1 bes2 a f g1 f\breve. r1
  R\breve r1 r2 g2 a2. bes4 c1. bes4 a bes2 c a2. bes4 c2 d1 c b2 c\breve
  R\breve r2 c1 a2 bes2. a4 g2 a2. g4 f e f1 g2 c1 a2 bes2. a4 g2 a2. g4 f e f1 \[g a \] g\breve
    
  
  \section
  \sectionLabel "Kyrie"
  \perfectus {
    R\breve.*2 c1 c a bes\breve g1 R\breve.*2 c1 c a bes\breve g1
  }
  r2 g1 a2 g c2. bes4 a g f2 c'1 bes2 d c a2. bes4 c d c2. bes4 a g f2 c'1 bes2 c1
  r2 c1 a2 bes g a f g2. f4 e d c1 f e2 f2 c'1 bes2 c a bes g c2. bes4 a2 g4 f g1
  f4 g a bes c2 d bes c a bes g c2. bes4 a g f1 g f\longa
  
  
  \fine
}

tenorLyrics = \lyricmode {
}

bassusKyrieIncipit = \incipit {
  \clef "mensural-f" \key f \major \time 2/2 \relative d {
    r\longa r\longa  c\breve e1 g1.
  }
}

bassusKyrie = \relative d {
  \clef bass
  \key f \major
  \alla-breve
  \fine
}

bassusLyrics = \lyricmode {
}

musicDefinition = \new ChoirStaff <<

  \new Staff \with {
    instrumentName = "Superius"
    shortInstrumentName = "S"
    midiInstrument = "choir aahs"
    \consists Bar_number_engraver
  } <<
    \new Voice = superius {
      \superiusKyrieIncipit
      \superiusKyrie
    }
  >>
  \new Lyrics \lyricsto superius \superiusLyrics

  \new Staff \with {
    instrumentName = "Altus"
    shortInstrumentName = "A"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = altus {
      \altusKyrieIncipit
      \altusKyrie
    }
  >>
  \new Lyrics \lyricsto altus \altusLyrics

  \new Staff \with {
    instrumentName = "Tenor"
    shortInstrumentName = "T"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = tenor {
      \tenorKyrieIncipit
      \tenorKyrie
    }
  >>
  \new Lyrics \lyricsto tenor \tenorLyrics

  \new Staff \with {
    instrumentName = "Bassus"
    shortInstrumentName = "B"
    midiInstrument = "choir aahs"
  } <<
    \new Voice = bassus {
      \bassusKyrieIncipit
      \bassusKyrie
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
    \consists Ambitus_engraver
    \RemoveEmptyStaves
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
  \tempo 1=75
}

kyrie = 
  \score {
    \header {
      piece = \markup \large \bold "Kyrie"
    }
    \musicDefinition
    \layoutDefinition
    \midiDefinition
  }

\book {
  \kyrie
}

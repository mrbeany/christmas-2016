\version "2.14.2"

songDedication = \markup {for C.B.}
songTitle = "Own a Fish"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Silent Night } }
tuneComposer = "Franz Gruber (1787–1863)"
tuneSource = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key bes \major
    \time 6/8
    \autoBeamOff
    \tempo \markup\italic"Tranquillo" 8 = 90
}

sopMusic = \relative c' {
  f8. g16 f8 d4.  |  f8. g16 f8 d4. |
  c'8. b16 c8 a4. |   bes8. a16 bes8 f4. |

  g4 g8 bes8. a16 g8 | f8. g16 f8 d4 bes'8\rest |
  g4 g8 bes8. a16 g8 | f8. g16 f8 d4 bes'8\rest |

  c4 c8 ees8. c16 a8     |   bes4. d4 bes8\rest |
  bes8 f d8 f8. ees16 c8 |  bes4. ~ bes4 bes'8\rest \bar "|."
}


altoMusic = \relative c' {
  d8.[ ees16] d8 bes4. |
  d8.[ ees16] d8 bes4. |
  ees8.[ d16] ees8 c4. |
  d8.[ c16] d8 d4. |

  ees4 ees8 g8.[ f16] ees8 |
  d8.\noBeam ees16\noBeam d8\noBeam bes4 s8 |
  \slurDotted ees4 ees8\noBeam g8.\noBeam( f16\noBeam) ees8 |
  d8.\noBeam( ees16\noBeam) d8 bes4 s8 |

  \slurSolid ees4 ees8 c8.\noBeam ees16\noBeam c8 |
  d4.( f4) s8 |
  d4 bes8 d8.\noBeam c16\noBeam a8 |
  bes4.~ bes4 s8 \bar "|."
}
altoWords = \lyricmode {
  \set stanza = #"1. "
  Si -- _ lent night!
  Ho -- _ ly night!
  All __ _ is calm,
  all __ _ is bright.
  Round yon Vir -- _ gin
  Moth -- er and Child,
  Ho -- ly In -- fant, so ten -- der and mild,
  Sleep in heav -- en -- ly peace, __ _
  Sleep __ _ in heav -- en -- ly peace. __ _
}


tenorMusic = \relative c' {
  bes4 bes8 f4. |
  bes4 bes8 f4. |
  a4 a8 f4. |
  f4 f8 bes4. |

  bes4 bes8 g8.[ a16] bes8 |
  bes8.\noBeam bes16\noBeam bes8 f4 s8 |
  \slurDotted bes4 bes8 g8.\noBeam( a16\noBeam) bes8 |
  bes8.\noBeam( bes16\noBeam) bes8 f4 s8 |

  a4 a8\noBeam a8.\noBeam a16\noBeam f8 |
  \slurSolid f4.( bes4) s8 |
  f4 f8\noBeam f8.\noBeam f16\noBeam ees8 |
  d4.~d4 s8 \bar "|."
}


bassMusic = \relative c {
  bes4 bes8 bes4. |
  bes4 bes8 bes4. |
  f'4 f8 f4. |
  bes,4 bes8 bes4. |

  ees4 ees8 ees4 ees8 |
  bes8.\noBeam bes16\noBeam bes8\noBeam bes4 d8\rest |
  \slurDotted ees4 ees8\noBeam ees8.\noBeam( ees16\noBeam) ees8 |
  bes8.\noBeam( bes16\noBeam) bes8 bes4 d8\rest |

  f4 f8\noBeam f8.\noBeam f16\noBeam f8 |
  bes,4.~ bes4 d8\rest |
  f,4 f8\noBeam f8.\noBeam f16\noBeam f8 |
  bes4.~ bes4 d8\rest \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
    I think I might, I think I might,
    own __ _ a fish, if __ _ that's right.
    I would like to __ _ own five mil -- lion.
    Large and small, they would go in a bin.
    I would like to own so ma~ny
    that I could not count them all. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I think these fish are love -- ly fish.
    I've heard that some glow in the dark.
    But, my fish they don't glow quite like that.
    No, these fish, they don't grow like __ _ that.
    These fish they glow in fish lights.
    That's why they glow with spec~ial lights. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    I think that fish is a cute fish
    like __ _ all fish. Swell, love -- ly fish.
    I would like to __ _ name that fish Will.
    Will's a fish, and he's do -- ing quite well.
    But, he's still in the fish store.
    That will not do, not at all. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
}

lyricsE = \lyricmode {
  \set stanza = #"5. "
}

lyricsF = \lyricmode {
  \set stanza = #"6. "
}

lyricsG = \lyricmode {
  \set stanza = #"7. "
}

\bookpart{
    \tocItem \songTitle
    \header {
        title = \songTitle
        poet = \songPoet
        dedication = \songDedication
        %translator = \songTranslator
        composer = \tuneComposer
        arranger = \tuneArranger
        source = \tuneSource
        copyright = \albumCopyright
        tagline = \albumTagline
    }

    \score {
        <<
            \new Staff \new Voice = "sopranos" { \global \sopMusic }
            \new Lyrics \lyricsto "sopranos" \lyricsA
            \new Lyrics \lyricsto "sopranos" \lyricsB
            \new Lyrics \lyricsto "sopranos" \lyricsC
            \new Lyrics \lyricsto "sopranos" \lyricsD
            \new Lyrics \lyricsto "sopranos" \lyricsE
            \new Lyrics \lyricsto "sopranos" \lyricsF
            \new Lyrics \lyricsto "sopranos" \lyricsG
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


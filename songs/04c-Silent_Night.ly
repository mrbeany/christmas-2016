\version "2.14.2"

songDedication = \markup {for M.L.}
songTitle = "That is cool, I suppose."
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
  \set stanza = #"Orig. "
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
The nice Cub -- bies they won their game.
That is __ _ cool, I sup -- _ pose.
I was bus -- y __ _ eat -- ing some -- thing.
I saw bits while I was com -- plain -- ing.
That um -- pire he made the call!
I think he did it all wrong. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
That base -- ball game is a __ _ game
with a ball on a field.
Some peo -- ple com -- plain that __ _ it is __ _ slow.
I don't know but I like the whole show.
I think it's real ex -- cit -- ing!
And I have time to eat food. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
That base -- ball game the Cubs they won.
I did not think they would do it.
They've not won a game in my life -- time.
I was sure it would not be in mine.
But some -- how they pulled it off.
That is so cool, I sup -- pose. __
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


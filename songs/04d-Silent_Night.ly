\version "2.14.2"

songDedication = \markup {for E.F.}
songTitle = "Beast Boy"
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
I like to eat lots of __ _ things
they __ _ call me the __ _ Beast Boy.
I can turn in to ma -- _ ny things,
stuff my gut __ _ with ma -- _ ny things.
I just real -- ly love eat -- ing
I real -- y get so hung -- ry. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think I might be a dol -- phin to -- night
they are cool mam -- mals, too.
And may -- be lat -- er I'll be a snake
may -- be an eag -- le, I could catch you.
We could prac -- tice. It's so fun!
I think that you would have fun. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Some -- times __ _ I'm a kang -- a -- roo.
Watch __ _ me box his __ _ lights out.
Oth -- er times I'm a big gor -- il -- la
not a mind con -- trol -- ing gor -- il -- la.
I get my gor -- illa pow -- ers
but I'm not su -- per sap -- ient. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
How would you like
if I changed to
a lit -- tle worm
and crawled in dirt.
Then may -- be I could turn in __ _ to
a mole with __ _ a real -- ly weird nose.
I think moles are __ _ so cute!
Ex -- cept the moles __ _ from space. __
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


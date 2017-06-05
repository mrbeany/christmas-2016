\version "2.14.2"

songDedication = \markup {for S.C.}
songTitle = "I am too full"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic { Silent Night } }
tuneComposer = \markup { Franz Gruber (1787–1863) }
tuneSource = \markup \null

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
  f8. g16 f8 d4. |  f8. g16 f8 d4. |
  c'8. b16 c8 a4. |   bes8. a16 bes8 f4. |

  g4 g8 bes8. a16 g8 |  f8. g16 f8 d4 bes'8\rest |
  g4 g8 bes8.  a16  g8 |  f8. g16 f8 d4 bes'8\rest |

  c4 c8 ees8. c16 a8 |   bes4. d4 bes8\rest |
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

lyricsA = \lyricmode {
    \set stanza = #"1. "
I think I might, I think I might
lie __ _ down here on __ _ the floor.
I think I ate too much food to -- night.
I think I ate too much food to -- night.
I~feel ex -- cep -- tion' -- ly bloa -- ted.
Oh, and I heard the Cubs won. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I am too full. Quite sa -- ti~a -- ted.
Per -- _ haps bloa~ted. I __ _  should take~some~thing.
And I heard the Cubs won that old game.
Not once had they won in my life -- time.
But they won while I was ea~ting.
I am glad they in -- vit'd me. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
That Cub -- bie game. It was __ _ fine.
I saw a lit~tle~bit.
Be -- tween the food~crimes.
It would have been a lit -- tle bet -- ter
if that per~son had worn~a bet -- ter swea -- ter.
But, at least the Cubs, they won.
At least the Cubs, __ _ they won.  __
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
            \new Lyrics  \lyricsto "sopranos" \lyricsA
            \new Lyrics  \lyricsto "sopranos" \lyricsB
            \new Lyrics  \lyricsto "sopranos" \lyricsC
        >>
        \layout { }
%       \midi { }
    }
}


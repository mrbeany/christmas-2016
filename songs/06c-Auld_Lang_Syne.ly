\version "2.14.2"

songDedication = \markup {for J.B.}
songTitle = "I didn't think they would."
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{Auld Lang Syne} }
tuneComposer = "Traditional"
tuneSource = \markup {from \italic {Favorite Songs and Hymns for School and Home}, 1899}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key g \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 60
}

sopMusic = \relative c' {
    \partial 8 d8^\p |
    g8. g16 g8 b | a8. g16 a8 b | g8. g16 b8 d | e4.  e8 | d8. b16 b8 g |
    a8. g16 a8 b | g8. e16 e8 d | g4 b8\rest

    e8 | d8. b16 b8 g | a8. g16 a8 b16\rest b |
    b8. g16 b8. d16 | e4.  e8 | d8. b16 b8 g |
    a8. g16 a8 b | g8. e16 e8 d | g4  b8\rest
}

altoMusic = \relative c' {
  d8 |
  d8. d16 d8 g |
  fis8. e16 fis8 fis |
  d8. d16 g8 g |
  g4. g8 |
  g8. g16 g8 g |

  fis8. e16 fis8 g |
  \slurDotted e8.( c16) c8( c) |
  b4 s8
  g'8 |
  g4 g |
  fis8. e16 fis8 s16 g |

  g8.[ e16] g8.[ b16] |
  c4. c8 |
  b8. g16 g8 g |
  fis8. e16 fis8 fis |
  e4 c4 |
  b4 s8 \bar ":|"
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  Should auld ac -- quain -- tance be for -- got,
  And nev -- er brought to mind?
  Should auld ac -- quain -- tance be for -- got,
  And days of auld lang syne?

  For auld __ _ lang __ _ syne, my dear,
  For auld __ _ lang __ _ syne;
  We’ll tak’ a cup o’ kind -- ness yet
  For auld __ _ lang __ _ syne.
}

tenorMusic = \relative c' {
  b8 |
  b8. b16 b8 d |
  d8. d16 d8 d |
  b8. b16 d8 b |
  c4. c8 |
  b8. d16 d8 b |

  d8. d16 d8 d |
  \slurDotted c8.( g16) fis8( fis) |
  g4 s8
  c |
  b8.[ d16] d4 |
  d8. d16 d8 s16 d |

  d4 d |
  c4. c8 |
  d8. d16 d8 b |
  d8. d16 d8 d |
  b4 fis |
  g s8 \bar ":|"
}

bassMusic = \relative c {
  g'8 |
  g8. g16 g8 g |
  d8. d16 d8 d |
  g8. g16 g8 g |
  c,4. c8 |
  g'8. g16 g8 g |

  d8. d16 d8 g |
  \slurDotted c,8.( c16) d8( d) |
  g,4 d'8\rest
  g |
  g4 g4 |
  d8. d16 d8 d16\rest g |

  g4 g |
  c,4. c8 |
  g'8. g16 g8 g |
  d8. d16 d8 b |
  e4 d |
  g, d'8\rest \bar ":|"
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
The Cubs they won that lit -- tle game
I didn't think __ _ they would.
They played their best once a -- gain
and they wacked it with their wood.
They used their bats on the small balls
and they ran on to home.
That's as much as I know
of base -- ball, but it's how it goes.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I think base -- ball is a game
and it makes a lot of buck
and the bucks they don't stop
un -- til they've gone to the __ _  top
to se -- lect the best players
they fight real -- ly with tooth and nail
but I sup -- pose that's how it goes.
It's ca -- pit -- a -- lism's woes.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought that the Cubs would not win
but hey, you know, they did.
I've been bet -- ting on their loss
since I was a lit -- tle kid.
It was eas -- y, you know
be -- cause they've al -- ways lost the games
but to -- day I've lost my shirt
so that is why I com -- plain.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
But you know that so ma -- ny peo -- ple
wanted to see them
win a game once in their life -- times
since they were just a __ _ kid.
They've of -- ten want -- ed to watch games
and that is how it goes.
They love the Cubs for some rea -- son
or that's what I sup -- pose.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}



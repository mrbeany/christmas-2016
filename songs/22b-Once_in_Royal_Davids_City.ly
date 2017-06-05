\version "2.14.2"

songDedication = \markup {for M.L.}
songTitle = "Actually Gum Drops"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Once in Royal David’s City } }
tuneComposer = "Henry J. Gauntlett (1805–1876)"
tuneSource = \markup {from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
  \key g \major
  \time 4/4
  \autoBeamOff
  \tempo 4 = 108
}

sopMusic = \relative c' {
  \partial 2 d4 fis |
  g4. g8 g fis g a |
  a4 g g b |

  d4. b8 b a g fis |
  g2  d4 fis |
  g4. g8 g fis g a |

  a4 g g b |
  d4. b8 b a g fis |
  g2  e'4 e |

  d4. g,8 c4 c |
   b4 b e e |
   d4. b8 b a g fis |
   g4 g \bar "|."
}


altoMusic = \relative c' {
  d4 c |
  d4. d8 d4 d8[ fis] |
  fis4 g d g |
  g4. g8 e4 d |
  d2 d4 c |

  d4. d8 cis4 cis |
  d8[ c!] b4 d g |
  g4. g8 e4 d |
  d2 g4 g |

  g8[ fis g] g g4 fis |
  \slurDotted g4( g) e8[ fis] g[ a] |
  d,[ fis g] d e4 d |
  d( d) \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  Once in roy -- al Da -- _ vid’s __ _ cit -- y
  Stood a low -- ly cat -- _ tle __ _ shed,
  Where a moth -- er laid __ _ her __ _ Ba -- by
  In a man -- ger for __ _ His __ _ bed:
  Ma -- ry was __ that moth -- er mild, __ _
  Je -- sus Christ __ her lit -- _ tle __ _ Child. __ _
}


tenorMusic = \relative c' {
  b4 a |
  g4. b8 b[ a] b[ c] |
  c4 b b g |
  g4. d'8 d[ c] b[ a] |
  b2 b4 a |

  g4. b8 g4 g |
  fis g b g |
  g4. d'8 d[ c] b[ a] |
  b2 c4 c |

  b8[ c d] b a4 d |
  \slurDotted d4( d) c c |
  c8[ a b] d d[ c] b[ a] |
  b4( b) \bar "|."
}


bassMusic = \relative c {
  g4 a |
  b4. g8 d'4 d |
  d g g e |
  b4. g8 c4 d |
  g,2 g4 a |

  b4. g8 e'4 a, |
  d g g e |
  b4. g8 c4 d |
  b2 c8[ d] e[ fis] |

  g[ a b] g d4 d |
  \slurDotted g4( g) c,8[ d] e[ fis] |
  g4. g8 c,4 d |
  g,( g) \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I won -- der if __ _ you thought if I might
sing a song and then dance all a -- round.
I~thought you might just sing a lit -- tle song
but there you go, you're danc -- ing all a -- round.
I want -- ed to dance a -- round, too.
But I'm just wear -- ing my lit -- tle blue shoes.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
And they are not good for the __ _ danc -- ing.
They scuff the floors and that real -- ly sucks.
I~won -- der if I could buy some new shoes
At the shop down the street on the old left.
I won -- der if that's north or south
or may -- be it is east or it is west.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I thought I might sing a wee song
and I won -- der if this is the right one to~do.
I thought I might be a lit -- tle bird now
but look here, I guess I am a shrew.~I
thought I liked these snails for break -- fast
but they were act -- u -- al -- ly gum __ _ drops.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I won -- der how they make those gum -- drops
so mea -- ty and squi -- shy in __ _ my mouth.
I~thought per -- haps this song would be much bet -- ter
than the last one that I did put out~but
I guess I am real -- ly not good, but
I'll keep try -- ing. That's what I am about.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I thought per -- haps we could go ov -- er
and sing a song and wig -- gle all a -- bout.
I thought per -- haps of wigg -- ling my tush -- y
and fling -- ing my arms all a -- bout.
I won -- der if my arms they would go flap -- py
if I just let them all a -- bout.
}

lyricsF = \lyricmode {
    \set stanza = #"6. "
}

lyricsG = \lyricmode {
    \set stanza = #"7. "
}

lyricsH = \lyricmode {
    \set stanza = #"8. "
}

lyricsI = \lyricmode {
    \set stanza = #"9. "
}

lyricsJ = \lyricmode {
    \set stanza = #"10. "
}


lyricsK = \lyricmode {
    \set stanza = #"11. "
}

lyricsL = \lyricmode {
    \set stanza = #"12. "
}

lyricsM = \lyricmode {
    \set stanza = #"13. "
}

lyricsN = \lyricmode {
    \set stanza = #"14. "
}

lyricsO = \lyricmode {
    \set stanza = #"15. "
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
            \new Lyrics \lyricsto "sopranos" \lyricsH
            \new Lyrics \lyricsto "sopranos" \lyricsI
            \new Lyrics \lyricsto "sopranos" \lyricsJ
            \new Lyrics \lyricsto "sopranos" \lyricsK
            \new Lyrics \lyricsto "sopranos" \lyricsL
            \new Lyrics \lyricsto "sopranos" \lyricsM
            \new Lyrics \lyricsto "sopranos" \lyricsN
            \new Lyrics \lyricsto "sopranos" \lyricsO
%            \new Lyrics  \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


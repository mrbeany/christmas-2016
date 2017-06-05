\version "2.14.2"

songDedication = \markup {for S.B.}
songTitle = "I Want to Read a Book"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ The Wassail Song } }
tuneComposer = "17th Century English"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key e \major
    \time 6/8
    \tempo 4 = 160
}


sopMusic = \relative c' {
  \time 6/8
  \partial 8 e8 |
  e4 fis8 gis4 fis8 |
   e4 fis8 gis4 fis8 |
  e4 b'8 b4 b8 |

   b4. b4
  b8 |
  cis4 cis8 b4 gis8 |
  b4. a4 gis8 |
   fis4 e8 fis4 gis8 |
  a4.

  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  gis4 a |
  b2 e4 cis |
  b2 gis4 a |
  b b e cis |
  b2 gis4 a |
  b2 cis4 gis |

   a fis e dis |
  e4. fis8 gis4 e |
  a2 gis4 a |
  b2 cis4 gis |
  a fis e dis |
  e2 \bar ":|"

}


altoMusic = \relative c' {
  \time 6/8
  e8 |
  e4 e8 dis4 dis8 |
  \slurDotted e4( e8) dis4 dis8 |
  e4 e8 a4 gis8 |

  fis4.~ fis4 fis8 |
  a4 e8 e4 e8 |
  \slurSolid fis4.( dis4) e8 |
  \slurDotted cis4( e8) dis4 e8 |
  dis4.


  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  e4 dis |
  e2 e4 fis |
  gis2 e4 dis |
  e dis gis e |
  dis2 gis4 fis |
  fis2 eis4 eis |

  \slurSolid fis( cis) b b |
  b4.( dis8) e4 e |
  cis( dis) e e |
  fis2 cis4 cis |
  cis cis b2 |
  b2 \bar ":|"
}

altoWords = \lyricmode {
    \set stanza = #"Orig. "
    _ Here we come a -- was -- sail -- ing A -- mong the leaves so green, _ _
    Here we come a -- wan -- d’ring, So fair __ _ to be seen.
    Love and joy come to you, And to

    you your was -- sail too,
    And God bless you, and send you a hap -- py new
    year,
    And God
    send you a hap -- py new year.
}


tenorMusic = \relative c' {
  \time 6/8
  gis8 |
  gis4 a8 b4 a8 |
  \slurDotted gis4( a8) b4 a8 |
  gis4 b8 dis4 e8 |

  dis4.~ dis4 dis8 |
  e4 a,8 b4 b8 |
  b4.~ b4 b8 |
  cis4( b8) a4 gis8 |
  fis4. \bar "||"

  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  b4 b |
  b2 cis4 dis |
  e2 b4 b |
  b b b ais |
  b2 b4 cis |
  b2 b4 b |

  a2 gis4 fis |
  \slurSolid gis4.( a8) b4 cis |
  a2 b4 cis |
  b2 gis4 b |
  a4 a gis( fis) |
  gis2 \bar ":|"

}


bassMusic = \relative c {
  \time 6/8
  e8 |
  e4 e8 b4 b8 |
  \slurDotted e4( e8) b4 b8 |
  e4 gis8 fis4 e8 |

  b'4.~ b4 b8 |
  a4 a8 gis4 e8 |
  \slurSolid dis4.( fis4) e8 |
  \slurDotted a4( gis8) fis4 e8 |
  b4.

  \time 2/2
  \set Timing.measurePosition = #(ly:make-moment 1/2)
  e4 fis |
  gis2 a4 a |
  e2 e4 fis |
  gis fis e fis |
  b,2 e4 e |
  dis2 cis4 cis |

  \slurSolid fis( a,) b b |
  gis'4.( fis8) e4 cis |
  fis2 e4 cis |
  dis2 eis4 eis |
  fis4 a, b2 |
  e2 \bar ":|"

}

lyricsA = \lyricmode {
    \set stanza = #"1. "
So, I think I might real -- ly like to read an -- oth -- er book.
A big book or a lit -- tle book or one a -- bout a crook.
Be -- cause I like all my books.
I like to read them a lot.
And I'm sure they'll bring joy to me
as I get on to their plots.
I'm sure I'll get on to their plots.

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I want to read a book a -- bout a leap -- ing lit -- tle frog,
a lit -- tle book a -- bout a real -- ly fanc -- y lit -- tle frog,
but this book's a -- bout toads
and I don't like those old toads.
So I'll put it back and look for an -- oth -- _ _ er book.
I'll put it back and get an -- oth -- er book.

}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I want to read a book a -- bout a wi -- zard named Har -- ry
an old wiz -- ard and a liz -- ard that's a wiz -- ard liz -- ard,
but this book's a -- bout a man who is called Dap -- per Dan
and that doesn't sound like a wiz -- ard or a liz -- ard to me.
That does not sound like a liz -- ard to me.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I want to do some -- thing that is real -- ly, real -- ly we -- ird.
Like get book co -- vers and use them while at the lib -- ra -- ry.
I think that it could be sweet when they see a book a -- bout meat
and they find it's a -- bout some veg' -- tar -- ian coo -- kies,
when they find it's a -- bout ve -- gan coo -- kies.
}

lyricsE = \lyricmode {
    \set stanza = #"5. "
I want to read a book a -- bout some liv -- ing gi -- ant whales.
Space whales that are sail -- ing out in space, high a -- bove the sea.
but I think this book might
be a -- bout some light' -- ning bright.
I don't think that's what I was look -- ing for to -- day.
I don't think that's what I was look -- ing for to -- day.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


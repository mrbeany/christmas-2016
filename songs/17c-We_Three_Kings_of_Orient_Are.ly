\version "2.14.2"

songDedication = \markup {for M.F.'s special someone}
songTitle = "White Kitty and Black Kitty"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ We Three Kings of Orient Are } }
tuneComposer = "John H. Hopkins (1820–1891)"
tuneSource = \markup { from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key g \major
    \time 3/8
    \autoBeamOff
    \tempo 4 = 80
}

sopMusic = \relative c'' {
%  e4( dis8 e4 <fis dis>8 |
%  <g e>4 <fis dis>8 <g e>4 <a fis>8) |
  b4 a8 g4 e8 |
  fis8\noBeam g fis |

  e4 b'8\rest |
  b4 a8 g4 e8 |
   fis8\noBeam g fis |
  e4 b'8\rest |
  g4 g8 |

  a4 a8 |
  b4 b8 |
   d c b |
   a8\noBeam b\noBeam a |
  g4 fis8 |
  e4. |

  fis4\fermata a8\fermata |
  g4^\markup\italic"a tempo" g8 | g4 d8 g4 e8 | g4 b8\rest |
  g4 g8 | g4 d8 g4 e8 | g4 b8\rest |
  g4 g8 a4 b8 | c4 b8 a4 b8 |
  g4 g8 g4 d8 g4 e8 g4.\fermata \bar "|."
}

altoMusic = \relative c'' {
%  s4.*4 |
%  g4 fis8 e4 e8 dis8\noBeam dis\noBeam dis |

  \slurDotted e4 s8 | g4 fis8 e4 e8 | dis8\noBeam( e\noBeam) dis |
  e4 s8 | e4 e8 |

  fis4 fis8 | g4 g8 |
  \slurSolid g[ fis] g |
  \slurDotted fis8\noBeam( g\noBeam) fis |
  e4 dis8 |
  e4. |

  d4. | d4 d8 d4 b8 b4 e8 d4 s8 |
  d4 d8 d4 b8 b4 e8 d4 s8 |

  e4 e8 fis4 g8 g4 g8 fis4 g8 d4 d8 b4 d8 |
  e4 c8 | d4. \bar "|."
}

altoWords =  \lyricmode {
%    _ _ _ _
%     _ _ _
    \set stanza = #"1. "
    We three kings of O -- ri -- ent are;
    Bear -- ing gifts we tra -- verse a -- far,
    Field and foun -- tain, moor and moun -- _ tain,
    Fol -- low -- ing yon -- der star.

    O __ _

    Star of won -- der, star of night,
    Star with roy -- al beau -- ty bright,
    West -- ward lead -- ing, still pro -- ceed -- ing,
    Guide us to Thy per -- fect light.

}


tenorMusic = \relative c' {
%  g4 fis8 | g4 a8 | s4. | s4. |
%  b4 b8 | b4 g8 | a8\noBeam b\noBeam a |

  \slurDotted g4 s8 | b4 b8 | b4 g8 | a8\noBeam( b\noBeam) a |
  g4 s8 | b4 b8 |

  d4 d8 | d4 d8 | \slurSolid b8[ c] d |
  \slurDotted c8\noBeam( c) c |
  b4 a8 | g4. |

  \slurSolid
  << a4\fermata( {s8 s32 s16.}>> c8\fermata) |
  b4 b8 b4 g8 g4 c8 b4 s8 |
  b4 b8 b4 g8 g4 c8 b4 s8 |

  b4 b8 d4 d8 e4 d8 | d4 d8 b4 b8 g4 g8 g4 c8 b4. \bar "|."
}


bassMusic = \relative c {
%  e4.( e4. <e b'>4. <e b'>4.) |
%  e4 e8 e4 e8 | b\noBeam b\noBeam b |

  \slurDotted e4 d8\rest | e4 e8 e4 e8 | b\noBeam( b\noBeam) b |
  e4 d8\rest | e4 e8 |

  d4 d8 | g4 g8 |
  \slurSolid b8[ a] g |
  \slurDotted a\noBeam( a) a |
  b4 b,8 | e4. |

  d4.\fermata | g4 g8 g4 g8 e4 c8 g'4 d8\rest |
  g4 g8 g4 g8 e4 c8 g'4 d8\rest |

  e4 e8 d4 g8 | c,4 g'8 | d4 g8 | g4 g8 | g4 b,8 |
  c4 c8 g4.\fermata \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
White kit -- ty and black kit -- ty go
o -- ver there be -- tween my old toes.
My old toes they dangle use -- less -- ly
for they have seen too much woe.

Oh! I like my toes. I like them nice.
Stuffed in socks and shoes all night.
But you see my kit -- ties grabbed them.
Play -- ing with them to de -- light.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
White ki -- tty and black kit -- ty both
like to dance and play ev -- ry -- where.
But, I think they might like to do
some -- thing a -- bout the ho -- ur.

Oh, It's near -- ly four o' -- clock at night.
Cat's will be as cats all night.
Scream -- ing, jump -- ing, woo -- ing, wiggl -- ing.
Climb -- ing up things all the night.

}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Kit -- ty cats they like to do things.
Live -- ly things and sleep -- i -- er things.
These cats they just want to play with me.
I am try -- ing to sleep.

Oh! I like the kit -- ties, yes, I do.
White and black, they are so cool.
But, you see, these cats love me, so
on my head they want to sleep.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
White kit -- ty and black ki -- tty both
play with kids and play with their toes.
I think they might do things
with a cat, a cam' -- ra and a pose.

Oh, black kit -- ty's a Nin -- _ ja right.
Nin -- ja quiet and out of sight.
White kit -- ty's just a Snow -- ball
and tumb -- ling down to our de -- light.
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


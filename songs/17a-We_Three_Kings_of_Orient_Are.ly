\version "2.14.2"

songDedication = \markup {for M.B.}
songTitle = "Lovely Pirates Going Asail"
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

lyricsA =  \lyricmode {
    \set stanza = #"1. "
Love -- ly pi -- rates go -- ing a -- sail
stri -- ving forth to bring you some ale.
like to eat some -- thing that's not hard
and old and full of bug tails.

Oh __ _ I like to eat bis -- cuits, true.
I'd like to eat some with you.
But I'd pre -- fer some -- thing more stout.
I would like to eat some stew.
}

lyricsB =  \lyricmode {
\set stanza = #"2. "
Would you think per -- haps it might be
lo -- ver -- ly for you and for me
if we took our boo -- ty sai -- _ ling
and go ov -- er by sea.

Oh, I want to see some i -- slands bright
decked a -- bout in spar -- kling lights
stars a twin -- kling, wine glass~es tin -- kling
I would like to drink all night.
}

lyricsC =  \lyricmode {
    \set stanza = #"3. "
But per -- haps it won't be all night.
Drunk I get, oh, it's such a fright.
I would pre -- fer to read a book.
Or, per -- haps I'll write one, too.
Oh, I like my boo -- ty, yes it's true.
And I like yours, yes, it's true.
But I think per -- haps we should
just watch a show that has been through.
}

lyricsD =  \lyricmode {
    \set stanza = #"4. "
There are  pi -- rates who are going a -- sail
boy -- ed by their talk of the sale.
I think I might like to dance a while
under the moon -- less veil.

Oh, I like to drink and dance all night.
Pi -- rates, oh, but pi -- rates, right.
I think it would be quite love -- ly.
Why don't I scare up a bite?
}

lyricsE =  \lyricmode {
    \set stanza = #"5. "
I think I might go for a sail.
Not down here, or in -- side a whale.
I would pre -- fer up in the stars.
Ask -- ing comms, a ship to hail.

Oh, I am a pi -- rate, yes, it's true.
But not one for you or you.
I'm a pi -- rate of the space -- ways.
I would like some boo -- ty, true.
}

lyricsF =  \lyricmode {
    \set stanza = #"6. "
Why don't we go for -- ward a deck.
Twice, now, I thought it was a wreck.
But the car -- go it was car -- ry -- ing
It could have eat -- en debt.

Oh, I am a pi -- rate, yes, in -- deed.
Space is bound -- less and it's bleak.
I think I might like the pi -- rates
of the space -- ways. What a feat!
}

altoWords = \lyricmode {
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
            \new Staff { \global \sopMusic }
            \addlyrics \lyricsA
            \addlyrics \lyricsB
            \addlyrics \lyricsC
            \addlyrics \lyricsD
            \addlyrics \lyricsE
            \addlyrics \lyricsF
        >>

        \layout { }
%        \midi { }
    }
}


\version "2.14.2"

songDedication = \markup {for N.O.}
songTitle = "Don't pull my hair"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ The First Nowell } }
tuneComposer = "18th Century French Melody"
tuneSource = \markup {from \italic {Christmas Carols, New and Old}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key d \major
    \time 3/4
    \autoBeamOff
    \tempo 4 = 90
}

sopMusic = \relative c' {
  \partial 4
  fis8 ^\mf e |  d4. e8 fis g |  a2 b8 cis |   d4 cis b |
  a2 b8\noBeam cis |  d4 cis b |

  a b cis |  d a g |  fis2  fis8 e |  d4. e8  fis8\noBeam g |   a2 b8 cis |
   d4 cis b |  a2 b8\noBeam cis |  d4 cis b |  a b cis |   d a g |  fis2

  fis8 e |  d4. e8 fis g |  a2 d8 cis |  b2 b4 |  a2. |
  d4 cis b |  a b cis |  d a g |  fis2 \bar "|."
}

altoMusic = \relative c' {
  \partial 4 d4 |
  a2 d4 |
  e2 e4 |
  \slurDotted a4( a) g |
  fis2 d8\noBeam( e) |
  a4( fis) g |

  a( d,) g |
  fis( fis) e |
  d2 cis4 |
  a2 d8\noBeam( d) |
  e2 e4 |

  a4( a) g |
  fis2 d8\noBeam( e) |
  a4( fis) g |
  a( g) g |
  fis2 e4 |
  d2

  cis4 |
  a2 d4 |
  cis2 fis4 |
  g2 g4 |
  \slurSolid fis2( a4) |
  fis4 fis g |
  fis2 g4 |
  fis2 e4 |
  d2 \bar "|."
}

altoWords = \lyricmode {
    \set stanza = #"Orig. "
    The __ _ first __ _ No -- _ well the __ _
    an -- gel did say,
    Was to cer -- tain poor shep -- herds in fields as they lay;

    In __ _ fields __ _ where __ _ they lay __ _

    keep -- ing their sheep
    On a cold win -- ter’s night _ that was __ _ so deep.

    No -- _ well, __ _ No -- _ well, No -- _ well,
    No -- well, __
    Born is the King __ _ of Is -- _ ra -- el.
}


tenorMusic = \relative c' {
  \partial 4 a8[ g] |
  fis2 d'4 |
  cis2 b4 |
  \slurDotted a4( a) \slurSolid b8[ cis] |
  d2 \slurDotted b8\noBeam( a) |
  a4( a) cis |

  d( b) g |
  a( d) a |
  a2 \slurSolid a8[ g] |
  fis2 \slurDotted d'8\noBeam( d) |
  \slurSolid d4( cis) b |

  \slurDotted a( a) \slurSolid b8[ cis] |
  d2 \slurDotted b8\noBeam( a) |
  a4( a) cis |
  d4( d) e |
  \slurSolid a,( d) a |
  a2

  a8[ g] |
  fis2 b4 |
  a2 a4 |
  b4.( cis8) d[ e] |
  fis2( e4) |
  d d d |
  d2 g,4 |
  a2 a4 |
  a2 \bar "|."
}

bassMusic = \relative c {
  \partial 4 d4 |
  d2 b4 |
  a( a') g |
  \slurDotted fis( fis) g |
  d2 g8\noBeam( g) |
  fis4( d) e |

  fis( g) e |
  fis8[( g] a4) a |
  d,2 a4 |
  d2 b8\noBeam( b) |
  \slurSolid a4( a') g |

  \slurDotted fis( fis) g |
  d2 g8\noBeam( g) |
  fis4( d) e |
  fis( g) e |
  \slurSolid fis8[( g] a4) a, |
  d2

  a4 |
  d2 b4 |
  fis'2 d4 |
  g4.( a8) b[ cis] |
  d2( cis4) |
  b a g |
  d'( d,) e |
  fis8[( g] a4) a, |
  d2 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I __ _ won -- der if you knew how I ate my left shoe.
It is al -- ways the left one that I will eat, too.
The __ _ right one it's a turd, and I give it to birds.
They don't eat my shoe, ei -- ther, but I guess they could.
I thought per -- haps you might sing a song a -- bout tonight.
But I guess you don't know the fu -- ture, yet.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
E -- ven -- tu -- al -- ly we all know __ _ what it will hold
but by then it will be the past, I __ _ sup -- pose.
I thought I might sing a song this __ _ eve -- ning and night,
and __ _ when I was through I did give such a fright.
For my beard it grew three feet and I won -- der'd who~was me.
It was not me, for my beard was too~long.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
And __ _ with that beard too long peo -- ple pulled it right~and left
and they tied it 'round my back a -- round my right breast.
But __ _ you would think that would  be the end of it there,
but they could not stop for they had stuck to my hair
and my hair it pulled so tight that I laid a scream~of fright.
I thought per -- haps they would rip it right~there.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
But __ _ you know that the skin is so flex -- i -- _ ble
you can pull it and tug it al -- most to your toes.
So my hair, it held on tight right _ __ through the harsh night
and __ _ when it was through, I let out such a sigh.
For e -- ven -- tu -- al -- ly they let go of my mane
and I was free from their hands for a while.
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}



\version "2.14.2"

songDedication = \markup {for M.A.}
songTitle = "Little Unicorn"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ O Come, All Ye Faithful } }
tuneComposer = "John Francis Wade (1711–1786)"
tuneSource = \markup {from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
  \key a \major
  \time 4/4
  \autoBeamOff
  \tempo 4 = 100
}

sopMusic = \relative c'' {
  \partial 4
  a4 |  a2 e4 a |  b2 e, |  cis'4 b cis d |   cis2 b4  a |  a2 gis4 fis |

  gis a b cis |   gis2 fis4. e8 |  e2. b'4\rest |  e2 d4 cis |
  d2 cis |  b4 cis a b |   gis4. fis8 e4

  a4 |  a gis a b |  a2 e4 cis'4 |  cis b cis d |  cis2 b4  cis |
  d cis b a |  gis2 a4 d |  cis2 b4. a8 |  a2. \bar "|."
}

altoMusic = \relative c' {
  \partial 4 e4 |
  e2 e4 e |
  e2 e |
  e4 e e fis |
  e2 e4 cis |
  cis( dis) e dis |

  \slurDotted e( dis8[) cis]( b4) e |
  \slurSolid e2( dis4.) e8 |
  e2. s4 |
  e2 fis8[ gis] a4 |
  a( \slurDotted gis)( a2) |
  e4 e fis fis |
  \slurSolid e2 e4

  e4 |
  e1~ |
  e2 e4 e |
  e e e e |
  e2 e4 a |

  gis a e e8[ dis] |
  e2 e4( fis) |
  e2( d4.) cis8 |
  cis2. \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
Please lit -- tle un -- i -- corn
why don't you join us
for some bis -- cuits and tea __ _
as we sit in this field.
Please! We won't hurt you
we just want to play with you,
and look up -- on your beau -- ty
that poin -- ty sharp held beau -- ty
that love -- ly lit -- tle point
of a un -- i -- corn's horn.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Please lit -- tle un i -- corn
don't you run a -- way!
We don't want to suck your blood
or to stuff our __ _ face.
We won't de -- horn you
rob you of that sin -- gu~lar thing,
that won -- der -- ful and horn~y thing
that glor -- i -- ous sharp poin~ty thing
no we will not de -- horn you __ _
ne -- _ ver -- more!
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Please lit -- tle un -- i -- corn
why won't you just join us?
Just brief -- ly and kind -- _ ly
as we stroll a -- bout.
We love your friends here
It is oh, so love -- ly here.
You pro -- tec -- ted this vale, __ _
pro -- tec -- ted for -- est vale. __ _
It's oh, so love -- ly
from your __ _ ma -- _ gic horn.
}

altoWords = \lyricmode {
    \set stanza = #"1. "
    O come, all ye faith -- ful, Joy -- ful and tri -- um -- phant, O come ye, O come _ ye to Beth -- _ le -- hem; Come and be -- hold Him, Born the King of an -- _ gels;
    O come, let us a -- dore Him,
    O come, let us a -- dore Him,
    O come, let us a -- dore Him, __ _ Christ, __ _ the Lord!
}


tenorMusic = \relative c' {
  \partial 4 cis4 |
  cis2 cis4 cis |
  b2 b |
  a4 b a a |
  \slurDotted a2 gis4 a |
  a2 b4 b |

  b( a)( e') cis |
  \slurSolid b2( a4.) gis8 |
  gis2. d4\rest |
  cis'2 d4 e |
  \slurDotted e2( e2) |
  e4 a, cis d |
  \slurSolid b4.( a8) gis4

  cis4 |
  cis b cis d |
  cis2. a4 |
  a gis a b |
  a2 gis4 e' |

  e e b b |
  b2 a |
  a( gis4.) a8 |
  a2. \bar "|."
}

bassMusic = \relative c' {
  \partial 4 a4 |
  a2 a4 a |
  gis2 gis |
  a4 gis a d, |
  \slurDotted e2 e4 fis |
  fis2 e4 b |

  e( cis)( gis) a |
  b2~b4. e8 |
  e2. s4 |
  cis'2 b4 a |
  b2( a2) |
  gis4 a fis d |
  e2 e4

  \slurSolid d\rest |
  g,1\rest |
  g1\rest |
  g1\rest |
  g2\rest f4\rest a'4 |

  b a gis fis |
  e( d) cis( d) |
  e2~e4. a,8 |
  a2. \bar "|."
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
        >>
        \layout { }
%        \midi { }
    }
}


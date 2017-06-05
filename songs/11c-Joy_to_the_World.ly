\version "2.14.2"

songDedication = \markup {for L.B.}
songTitle = "They Won That Game"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ Joy to the World! } }
tuneComposer = \markup {\smallCaps{Antioch} by Lowell Mason (1792–1872)}
tuneSource = \markup {from \italic {Hymns of the Kingdom of God}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key d \major
    \time 2/4
    \autoBeamOff
    \tempo 4 = 70
}

sopMusic = \relative c'' {
  d4 cis8.\noBeam b16 |
  a4. g8 |
  fis4 e |
  d4. a'8 |
  b4. b8 |

  cis4. cis8 |
  d4.\fermata d8 |
  d cis b a |
  a8. g16 fis8 d' |
  d cis b a |

  a8. g16 fis8 fis |
  fis\noBeam fis\noBeam fis\noBeam fis16 g |
  a4. g16 fis |
  e8\noBeam e\noBeam e\noBeam e16 fis |

  g4. fis16 e |
  d8 d'4 b8 |
  a8. g16 fis8 g |
  fis4 e |
  d2 \bar "|."
}


altoMusic = \relative c' {
  fis4 a8.\noBeam g16 |
  fis4. e8 |
  d4 cis |
  d4. a'8 |
  g4. g8 |

  g4. g8 |
  fis4. fis8 |
  fis8[ a] g[ fis] |
  fis8.[ e16 d8] fis |
  fis[ a] g[ fis] |

  fis8.[ e16 d8] d |
  d\noBeam d\noBeam d\noBeam d16[ e] |
  fis4. e16[ d] |
  cis8\noBeam cis\noBeam cis\noBeam cis16[ d] |

  e4. d16[ cis] |
  d8( fis4) g8 |
  fis8.[ e16 d8] e8 |
  d4 cis |
  d2
}

commonLyricsA = \lyricmode {
    \set stanza = #"Orig. "
    Joy to the world! the Lord is come;
    Let earth re -- ceive her King;
    Let ev -- ’ry __ heart __ _ _ _ pre -- pare __ Him __ _
    room, __ _ _ _ _
}

altoLyricsA = \lyricmode {
    \commonLyricsA
    And heav’n and na -- ture __ _ sing,
    And heav’n and na -- ture __ _ _ sing,
    And __ _ heav’n, __ _ and heav’n __ _ _ and na -- ture sing.
}

tenorLyricsA = \lyricmode {
    \commonLyricsA
    And heav’n and na -- ture sing, __
    And heav’n, and heav’n __ and na -- ture sing.
}

bassLyricsA = \lyricmode {
    \commonLyricsA
    And heav’n and na -- ture sing,
    And heav’n and na -- ture sing,
    And heav’n and na -- ture sing.
}


tenorMusic = \relative c' {
  a4 d8.\noBeam d16 |
  d4. b8 |
  a4. g8 |
  fis4. d'8 |
  d4. d8 |

  a4. a8 |
  a4. a8 |
  a4 d |
  d( a8)\noBeam a8 |
  a4 d |

  d( a8) d,\rest |
  d4\rest d8\rest a' |
  a\noBeam a\noBeam a\noBeam a\noBeam |
  a2~ |

  a4. a16[ g] |
  fis8( a4) d8 |
  d4( a8)\noBeam b |
  a4. g8 |
  fis2
}

bassMusic = \relative c {
  d4 d8.\noBeam d16 |
  d4. g,8 |
  a4 a |
  d4. fis8 |
  g4. g8 |

  a4. a8 |
  d,4.\fermata d8 |
  d4 d |
  d4. d8 |
  d4 d |

  d4. r8 |
  r4. d8 |
  d\noBeam d\noBeam d\noBeam d\noBeam |
  a'4. a,8 |

  a8\noBeam a\noBeam a\noBeam a\noBeam |
  d4. d8 |
  d4. g,8 |
  a4 a |
  d2
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought per -- haps the Cubs would win
but not win that one game.
I put some mo -- ney on __ _ it.
The Cubs they were to lose by ten.
Yet they won that old __ _ game.
Yes, they won that sil -- ly old game.
And the Cubs! __ _ The Cubs! __ _ _ They won that game.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought they were a good bet to place.
They never win their games.
But they won that old game you know.
Now I'm worr -- ied a -- bout my toes.
My book -- ie might break my toes.
My __ _ ank -- les, shins and __ _ toes.
I'm __ _ worr -- ied my book -- _ ie might break my toes.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
How do you know if you are dead?
Will you see Cubs win again?
I thought they would ne -- ver __ _ win.
I placed mo -- ney on In -- di -- ans.
I was cer -- tain they wouldn't win.
I was quite cer -- tain they wouldn't win.
But you know they won, and __ _ _ I lost my shirt.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
How do you know when the world ends.
Is it be -- cause stuff happens?
Is it be -- cause the trump has won?
Is it be -- cause the Cubs they won?
Per -- haps it's gone too __ _ far.
Per -- _ haps the end is __ _ here.
How do you know the world __ _ _ has not end -- ed?
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
%            \new Lyrics \lyricsto "sopranos" \altoLyricsA

        >>

        \layout { }
%        \midi { }
    }
}


\version "2.14.2"

songDedication = \markup {for E.H.}
songTitle = "Have you considered Libertarianism?"
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
Have you con -- sid -- er'd Liber -- tarian -- ism?
They don't want you to pay.
You get to keep all your __ _ cash,
but then you have to pay it back
to pri -- vate cor -- por -- a -- tions,
pri -- vate, pri -- vate cor -- por -- a -- tions.
Real -- ly big, real -- ly big, gi -- ant cor -- por -- a -- tions.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Have you con -- sid -- er'd demo -- cra -- cy?
Where eve -- ry vote, it counts.
But not on -- ly just your __ _ vote,
no your __ _ vote is stu -- _ pid.
And his vote, it kind of sucks.
I think he just does __ _ drugs. __ _
And I think, __ _ I think __ _ _ we should not vote.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Have you con -- sid -- er'd so -- cial -- ism?
Not demo -- cra -- tic, just social.
It would be real -- ly nice __ _
to get rid of the big,
great __ _ big, great big cor -- por -- _ a -- tions.
Real -- ly big, real -- ly big cor -- por -- a -- tions
Get rid, get rid of cor -- por -- _ a -- tions.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Have you con -- sid -- er'd com -- mu -- nism?
Where we live in some peace?
But not the old Rus -- sian __ _ type.
No, not the Sov -- i -- et __ _ kind.
Some love -- ly com -- mun -- _ ism.
Quite love -- ly, love -- ly com -- mun -- ism.
Where we all __ _ eat food __ _ _ and drink our tea.
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
%            \new Lyrics \lyricsto "sopranos" \altoLyricsA

        >>

        \layout { }
%        \midi { }
    }
}


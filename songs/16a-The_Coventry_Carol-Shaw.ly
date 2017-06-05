\version "2.14.2"

songDedication = \markup {for R.R. III}
songTitle = "I Have About Three Hours"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ The Coventry Carol } }
tuneComposer = "16th Centry English Carol"
tuneSource = \markup {from \italic {ChristmasCarolMusic.org}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key bes \major
    \time 3/4
    \tempo 4 = 90
}

sopMusic = \relative c'' {
  g4 g fis |  g2 bes4 |  a8 a a4 g |  fis2. |  g4 a bes |  c a2 |  b2. \bar "||"
  g4 g fis |  g2 bes4 |  a2 g4 |  fis2. |  g4 a bes |   c a2 |  g2 d'4 |
  c2 bes4 |  a2 bes4 |  a2 g4 |   fis2. |  g4 fis g |  c a2 |  b2. \bar "|."
}


altoMusic = \relative c' {
  d4 d d |  d2 g4 |  f8 f f4 d |  d2. |  d4 f f |  g2 fis4 |  g2. |
  d4 d d |  d2 g4 |  f2 d4 |  d2. |  d4 f f |  g2 fis4 |  g2 f4 |
  a2 g4 |  f2 d4 |  f2 c4 |  d2. |  d4 d d |  g2 fis4 |  g2. \bar "|."
}

lyricsA = \lyricmode {
  \set stanza = #"1. "
Have you ev -- er con -- sid -- er'd rol -- ling dice?
Per -- haps a nat -- 'ral twenty?
Have you not thought
that playing could~be nice
Have you thought of coun -- tries?
I would like to play that nice game.
I have a -- bout three hours.
}

lyricsB = \lyricmode {
  \set stanza = #"2. "
Will that be long en --
ough to play that game?

I would pre -- fer to~take six.
How about we say
we'll eat~at four~and a~half?
Then we can go, parents willing.

I~would like to play
some -- time quite soon.
Please put that rule -- book away.
}

lyricsC = \lyricmode {
  \set stanza = #"3. "

Have you con -- sid~er'd
you could be playing it wrong.
I think you~might not like that.

That's not how it
is suppos'd to~be used.
It does not work like that.
I think, you might, die twice to -- night.
You are not a good player.
}

altoWords = \lyricmode {
  Lul -- ly, lul -- lay, Thou lit -- tle ti -- ny Child,
  By, by, lul -- ly, lul -- lay;

  \set stanza = #"1. "
  O sis -- ters too, how may we do,
  For to pre -- serve this day;
  This poor Young -- ling for whom we sing
  By, by, lul -- ly, lul -- lay?
}


tenorMusic = \relative c' {
  bes4 bes a |
  bes2 ees4 |
  c8 c c4 bes |
  a2. |
  bes4 c d |
  ees4 d2 |
  d2. |

  bes4 bes a |
  bes2 ees4 |
  c2 bes4 |
  a2. |
  bes4 c d |
  ees4 d2 |
  d d4 |

  f2 d4 |
  d2 bes4 |
  c2 g4 |
  a2. |
  bes4 a bes |
  ees d2 |
  d2. \bar "|."
}


bassMusic = \relative c' {
  g4 g d |
  g2 ees4 |
  f8 f f4 g |
  d2. |
  g4 f d |
  c d2 |
  g,2. |

  g'4 g d |
  g2 ees4 |
  f2 g4 |
  d2. |
  g4 f d |
  c d2 |
  g bes4 |

  f2 g4 |
  d2 g4 |
  f2 ees4 |
  d2. |
  g4 d g |
  c, d2 |
  g2. \bar "|."
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


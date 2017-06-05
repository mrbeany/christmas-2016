\version "2.14.2"

songDedication = \markup {for J.C.'s special someone}
songTitle = "Scared of my hair."
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{Fröhlich soll mein Herze springen} }
tuneComposer = \markup{Johann Georg Ebeling (1637–1676)}
tuneSource = \markup{from \italic{CantateDomino.org}}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"

global = {
    \key f \major
    \time 4/4
    \autoBeamOff
    \tempo 4 = 120
}

sopMusic = \relative c' {
  f2 g |  a2. g4 |  a c d2 |  c1 |  c4 d bes2 |  bes4 c a2 |
  a4 c bes a |  g2 f |  c' bes |  a2. g4 |  f e d2 |  c1 |
  c'4 d bes2 |  bes4 c a2 |  a4 g bes a |  g2 f2 \bar "|."
}


altoMusic = \relative c' {
  c2 d4( e) |  f2. e4 |  f e g2 |  e1 |  f4 f d2 |  d4 e c2 |
  c4 c f f |  f( e) c2 |  f f4( e) |  f2. c4 |  c c c( b) |  c1 |
  e4 f d2 |  d4 e c2 |  d4 d8[ c] bes4 c |  d( c) a2 \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"Orig. "
  All my heart this night re -- joi -- ces,
  As I hear, Far and near,
  Sweet -- est an -- gel voi -- ces;
  “Christ is born,” their choirs are sing -- ing,
  Till the air, Ev -- ’ry -- where,
  Now with joy is ring -- ing.
}


tenorMusic = \relative c' {
  a2 bes |  c2. c4 |  c c c( b) |  c1 |  a4 a bes2 |  g4 g a2 |
  f4 g8[ a] bes4 c |  c2 a |  a bes |  c2. e,4 |  f g a( g) |  e1 |
  g4 a a( g) |  bes a8[ g] f2 |  f4 g d8[ e] f4 |  f( e) c2 \bar "|."
}

bassMusic = \relative c' {
  a2 g |  f2. c4 |  f a g2 |  c,1 |  f4 d g2 |  g4 c, f2 |
  f4 e d f |  c2 f |  f, g |  a2. c4 |  d e f( g) |  c,1 |
  c4 f, g2 |  g'4 c, f( e) |  d bes8[ a] g4 a |  bes( c) f,2 \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
I thought I might give in~to my fright.
I was scared of my hair. It had started to fight.
And I thought I might dance all through~the night.
That was what they all did, and I thought I just might.
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
Give me~my wish. It's over on that dish.
It's just pa -- per, I know. But it's still my wish
and I hope then I might grow a den.
Like a bear in the woods, I would like to grow it.
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
Do bears grow their dens or do you sup -- pose they
dec -- ide to make those by hand.
Do you think they might give in and say hey
do you think they would sink to the level of my toes.
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
Do you think they would go over and
drink from the sink ov -- er there even though they have
no hands at all that I real -- ly know.
Do you think that they care, if I don't have toes? No?
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

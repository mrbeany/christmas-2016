\version "2.14.2"

songDedication = \markup {for M.R.}
songTitle = "Just One More"
songPoet = "S.W. Black"

tuneArranger = \markup { tune of \italic{ It Came Upon the Midnight Clear } }
tuneComposer = "Richard S. Willis (1819–1900)"
tuneSource = \markup { from \italic {Christmas Carols and Hymns for School and Choir}, 1910}

albumCopyright = \markup {Creative Commons Attribution 4.0 License}
albumTagline = \markup {for \italic {Christmas 2016.}
                        If you can do better, fork it from
                        https://github.com/mrbeany/christmas-2016}

% Fancier Copyright/Tagline messages
\include "../book/album.ily"


global = {
    \key bes \major
    \time 6/8
    \autoBeamOff
    \tempo 4 = 65
}

sopMusic = \relative c' {
  \partial 8
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g a bes bes c d |  c4.~ c4
  f,8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g4 g8 a g f |  bes4.~bes4
  d8 |  d4 d,8 d e fis |  g4 a8 bes4 d8 |  c bes a g a g |  f4.~f4
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g4 g8 a g f |  bes4.~bes4 \bar "|."
}

altoMusic = \relative c' {
  d8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 d8 |  ees4 ees8 e4 e8 |  f4.~ f4
  d8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 f8 |  ees4 ees8 ees4 ees8 |  d4.~ d4
  d8 |  d4 d8 d[ e] d |  d4 d8 d4 d8 |  f4 f8 e4 e8 |  f4.~ f4
  ees8 |  d4 d8 ees4 ees8 |  d4 ees8 d4 f8 |  ees4 ees8 ees4 ees8 |  d4.~ d4
  \bar "|."
}

altoWords = \lyricmode {
  \set stanza = #"1. "
  It came up -- on __ the mid -- night clear,
  That glo -- rious song of old, __
  From an -- gels bend -- ing near the earth
  To touch their harps of gold: __
  “Peace on the earth, good -- will to men
  From heav’n’s all gra -- cious King.”
%8.5x11 __
  The world in sol -- emn still -- ness lay
  To hear the an -- gels sing. __
}


tenorMusic = \relative c {
  f8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 bes8 bes4 bes8 |  a4.~ a4
  bes8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 c8 c[ bes] a |  bes4.~ bes4
  d,8 |  d4 fis8 fis[ g] a |  g4 fis8 g4 g8 |  a[ d] c bes[ c] bes |  a4.~ a4
  a8 |  f4 fis8 g4 a8 |  bes4 f8 f4 bes8 |  bes4 c8 c[ bes] a |  bes4.~ bes4
  \bar "|."
}

bassMusic = \relative c {
  bes8 |  bes4 bes8 bes4 bes8 |  bes4 a8 bes4 bes8 |  ees[ f] g g4 c,8 |  f4.~ f4
  bes,8 |  bes4 bes8 bes4 bes8 |  bes4 a8 bes4 d8 |  ees4 c8 f4 f8 |  bes,4.~ bes4
  d8 |  d4 d8 d4 c8 |  bes4 d8 g4 bes,8 |  c4 c8 c4 c8 |  f4.~ f4
  f8 |  bes,4 bes8 bes4 bes8 |  bes4 a8 bes4 d8 |  ees4 c8 f4 f8 |  bes,4.~ bes4
  \bar "|."
}

lyricsA = \lyricmode {
    \set stanza = #"1. "
    I want -- ed to just get one more pet
    and in -- stead
    I think I got three. __
    One was a cat and one was a snake
    and the~o -- ther, it just bit me. __
    I think it was a tin -- y lit -- tle
    mouse or wee -- vil or some -- thing else.
    It hitch'd a ride on my new cat here,
    but I think it wants to eat~us~all. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    Some things they like to eat peo~ple and cats
    and some things they eat not at all. __
    Most of the time those things they are rocks
    but they are good pets, that's all. __
    They do not poop or whine for old shoes
    or do their du -- ty on the lawn.
    In -- stead they just look real nice, all year,
    and then I have quite a ball. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    But my new cat, it just had two ears, not the three
    I want -- ed at all. __
    I want -- ed a three ear'd cat, it's true.
    Just like the one I saw at~the~mall. __
    This three eared cat, it want -- ed to play
    the hedge -- wars game with my hedge -- hogs.
    But I said no, and put it in a -- no -- ther room
    way down the hall. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    My cat, it just want -- ed to play games
    and it int -- 'rest -- ed the wee -- vil __
    I think it was a wee -- vil or~a tick.
    But some -- thing small, that's all I~know. __
    This lit -- tle bug, it want -- ed two things.
    Quite naught -- y things, that I am sure.
    World __ _ do -- min -- a -- tion
    and a gun
    so I put it out the door. __
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}


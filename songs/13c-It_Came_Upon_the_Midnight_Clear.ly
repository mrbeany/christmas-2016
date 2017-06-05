\version "2.14.2"

songDedication = \markup {for A.A.}
songTitle = "Blun Ga Flea"
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
  f8 |  d'4 a8 c bes g8 |  f4 g8 f4 f8 |  g[ a] bes bes c d |  c4.~ c4
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
    I thought I might per -- haps just get one more cat __
    for the \markup\italic blun \markup\italic ga \markup\italic flea. __
    I want -- ed cats for the on -- ion stew
    and I want -- ed like them me. __
    My words they fall like just rain from face
    and they make no sense, none to -- day. __
    I want -- ed you to en -- joy your deer,
    and some -- times wash your own face. __
}

lyricsB = \lyricmode {
    \set stanza = #"2. "
    I want -- ed to just get one more cat but then __
    acc -- i -- dent~ly got more. __
    I thought it was just a tin -- y hedge~hog
    but then it grew to~be a boar. __
    A gi -- ant pig from the Rus -- sian lands
    with teeth that could gore a big bear.__
    I want -- ed some -- thing nice and cud -- ly
    but this thing just makes me roar. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
    I thought I might just buy one more pet, but I __
    like to get them sec~ond~hand.
    A friend he of -- fer'd me some -- thing new. __
    It was a lump with a hand. __
    This hand it look'd like it~was made of stone
    and it crawl'd a -- round and I scream'd. __
    It was from al -- i -- ens long a -- go
    and they, they want -- ed to scheme. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
    I thought we would be safe when that man de -- stroy'd
    this thing once and for~all. __
    But, lo! he is gone and now we weep, __
    for we have naught but this ball. __
    I thought this ball would be some -- thing like
    a Pok -- è -- mon egg, that's for sure. __
    But no, it's just a ball, and that's dumb
    be -- cause I want -- ed Gurr -- durr. __
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


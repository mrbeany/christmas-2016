\version "2.14.2"

songDedication = \markup {for S.L.}
songTitle = "Fish Are on the Menu"
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
  \set stanza = #"Orig. "
  It came up -- on __ _ the mid -- night clear,
  That glo -- _ rious song __ _ of old, __
  From an -- gels bend -- _ ing near the earth
  To touch their harps __ _ of gold: __
  “Peace on the earth, __ _ good -- will to men
  From heav’n’s __ _ all gra -- _ cious King.” __
  The world in sol -- _ emn still -- ness lay
  To hear the an -- _ gels sing. __
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
The fish are on the me -- nu to -- night
and so are the mean -- est hu -- mans. __
You might like the nice fish o -- ver there,
or you might like that hu -- man. __
The fish are ten -- der -- ized best we can
with clubs and with our flam -- ing knives. __
But hu -- mans, they're so plump and yum -- my
we don't need to ten -- der -- ize. __

}

lyricsB = \lyricmode {
    \set stanza = #"2. "
I thought the fish would be best to -- night
but what sweet to pre -- pare with it? __
Per -- haps some pump -- kin pie or flam -- bé
or per -- haps you'd just like stew? __
I like to eat my hu -- mans all day
and some -- times I eat in the night. __
With fish, I eat in the dark of night,
some -- times I snack with my sight. __
}

lyricsC = \lyricmode {
    \set stanza = #"3. "
I like to just eat fish with my eyes
but you could call that just look -- ing. __
It's help -- ful to pro -- tect love -- ly fish.
I like to keep some at home. __
I like to watch the fish all the day,
though some -- times it's deep in the night. __
These fish are so love -- ly and they glow
at least when I use my light. __
}

lyricsD = \lyricmode {
    \set stanza = #"4. "
I thought per -- haps I would go out
and bring me back some hu -- mans to eat. __
I swim a -- round 'cause I am a shark,
nibb -- ling on their tast -- y feet. __

I thought it would be real -- ly nice to
gobb -- le up their legs and their arms. __
But lo! it's best when you go
and bite off their head: it's like a charm. __
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
%            \new Lyrics \lyricsto "sopranos" \altoWords
        >>
        \layout { }
%        \midi { }
    }
}

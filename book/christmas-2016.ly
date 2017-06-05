\version "2.14.2"

% #(set-default-paper-size "letter")

\paper {
    first-page-number = #1
    print-page-number = ##t
    print-first-page-number = ##f
    tocItemMarkup = \tocItemWithDotsMarkup
}

\include "album.ily"

\header {
   title = "Christmas 2016"
   poet = "S.W. Black"
   copyright = \albumCopyright
}

\markup {
    \column {
        \vspace #0.5
        \wordwrap {
            This is a collection of songs given to the family members
            of the \italic {Mr. Beany's Bitty Band} for Christmas in 2016.
            It is composed, exclusively, of new lyrics to established
            public domain songs.
        }
        \vspace #0.5
        \wordwrap {
            \italic {Mr. Beany's Bitty Band} released a
            \with-url #"https://mrbeany.bandcamp.com/album/christmas-2016" {
                Christmas 2016
            } album which features instrumental versions of the songs
            contained in this songbook.
            
        }
        \vspace #0.5
        \wordwrap {
            This would not be possible without Benjamin Bloomfield's 
            \with-url #"https://github.com/bbloomf/christmas-carols" {
                Christmas Carols Collection
            } available at
            \with-url #"https://github.com/bbloomf/christmas-carols" {
                <https://github.com/bbloomf/christmas-carols>
            }
        }
        \vspace #0.5
        \wordwrap { 
            These songs were written for \italic{Christmas 2016.}
            If you can do better, fork it from
            \with-url #"https://github.com/mrbeany/christmas-2016" {
                https://github.com/mrbeany/christmas-2016
            }
        }
        \vspace #0.5
    }
}

\markuplist \table-of-contents

\include "../songs/01a-What_Child_is_This.ly"
\include "../songs/01b-What_Child_is_This.ly"
\include "../songs/01c-What_Child_is_This.ly"
\include "../songs/02a-Bring_a_Torch_Jeanette_Isabella.ly"
\include "../songs/02b-Bring_a_Torch_Jeanette_Isabella.ly"
\include "../songs/03a-Deck_the_Hall.ly"
\include "../songs/03b-Deck_the_Hall.ly"
\include "../songs/04a-Silent_Night.ly"
\include "../songs/04b-Silent_Night.ly"
\include "../songs/04c-Silent_Night.ly"
\include "../songs/04d-Silent_Night.ly"
\include "../songs/05a-Jolly_Old_Saint_Nicholas.ly"
\include "../songs/05b-Jolly_Old_Saint_Nicholas.ly"
\include "../songs/05c-Jolly_Old_Saint_Nicholas.ly"
\include "../songs/05d-Jolly_Old_Saint_Nicholas.ly"
\include "../songs/06a-Auld_Lang_Syne.ly"
\include "../songs/06b-Auld_Lang_Syne.ly"
\include "../songs/06c-Auld_Lang_Syne.ly"
\include "../songs/07a-O_Little_Town_of_Bethlehem.ly"
\include "../songs/07b-O_Little_Town_of_Bethlehem.ly"
\include "../songs/07c-O_Little_Town_of_Bethlehem.ly"
\include "../songs/08a-Angels_We_Have_Heard_on_High.ly"
\include "../songs/08b-Angels_We_Have_Heard_on_High.ly"
\include "../songs/09a-Good_King_Wenceslas-Stainer.ly"
\include "../songs/09b-Good_King_Wenceslas-Stainer.ly"
\include "../songs/09c-Good_King_Wenceslas-Stainer.ly"
\include "../songs/10a-God_Rest_You_Merry_Gentlemen.ly"
\include "../songs/10b-God_Rest_You_Merry_Gentlemen.ly"
\include "../songs/10c-God_Rest_You_Merry_Gentlemen.ly"
\include "../songs/11a-Joy_to_the_World.ly"
\include "../songs/11b-Joy_to_the_World.ly"
\include "../songs/11c-Joy_to_the_World.ly"
\include "../songs/12a-Hark_the_Herald_Angels_Sing.ly"
\include "../songs/12c-Hark_the_Herald_Angels_Sing.ly"
\include "../songs/13a-It_Came_Upon_the_Midnight_Clear.ly"
\include "../songs/13b-It_Came_Upon_the_Midnight_Clear.ly"
\include "../songs/13c-It_Came_Upon_the_Midnight_Clear.ly"
\include "../songs/13e-It_Came_Upon_the_Midnight_Clear.ly"
\include "../songs/13f-It_Came_Upon_the_Midnight_Clear.ly"
\include "../songs/14a-Away_In_A_Manger-Kirkpatrick.ly"
\include "../songs/14b-Away_In_A_Manger-Kirkpatrick.ly"
\include "../songs/14c-Away_In_A_Manger-Kirkpatrick.ly"
\include "../songs/15a-O_Come_All_Ye_Faithful.ly"
\include "../songs/16a-The_Coventry_Carol-Shaw.ly"
\include "../songs/17a-We_Three_Kings_of_Orient_Are.ly"
\include "../songs/17c-We_Three_Kings_of_Orient_Are.ly"
\include "../songs/18c-The_Wassail_Song.ly"
\include "../songs/19b-Lo_How_a_Rose_Eer_Blooming.ly"
\include "../songs/19c-Lo_How_a_Rose_Eer_Blooming.ly"
\include "../songs/20a-I_Heard_the_Bells_on_Christmas_Day.ly"
\include "../songs/20b-I_Heard_the_Bells_on_Christmas_Day.ly"
\include "../songs/20d-I_Heard_the_Bells_on_Christmas_Day.ly"
\include "../songs/21c-I_Saw_Three_Ships.ly"
\include "../songs/21d-I_Saw_Three_Ships.ly"
\include "../songs/21e-I_Saw_Three_Ships.ly"
\include "../songs/22b-Once_in_Royal_Davids_City.ly"
\include "../songs/23b-The_First_Nowell.ly"
\include "../songs/24a-All_my_heart_this_night_rejoices.ly"
\include "../songs/24c-All_my_heart_this_night_rejoices.ly"
\include "../songs/24d-All_my_heart_this_night_rejoices.ly"
\include "../songs/24e-All_my_heart_this_night_rejoices.ly"


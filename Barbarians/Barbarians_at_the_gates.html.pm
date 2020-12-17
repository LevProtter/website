#lang pollen





◊link[#:rel "stylesheet" #:href "styles.css"]{}
◊article{
◊h1{Barbarians at the gates.}

◊section[#:id "intro"]{
    ◊p{
        You are the ◊em{Grand} Imperial cartographer, 
        and your services are needed!
        Lately, more and more barbarians have been making it past the borders.
        It’s gotten so bad that the previous minister of defense was fired ◊em{(the new one hired you.)}.
        The special commity concluded: “The reason for the recent wave breaches was new recruits
        unfamiliarity with the border regions.”
    }
    ◊p{
        That’s where you come in.
    }
}
◊section[#:id "the_problem"]{
    ◊h2{
        How do you design a map for a new recruit?
    }
    ◊figure{
    ◊img[#:src "map.svg" #:alt "A tactical map full of visual noise."]{}
    ◊figcaption{
        ◊em[#:id "question"]{
            Pretty standard, right? 
           }
    }
    }
    ◊p{
        Definately not like that.
        This might be what got us here in the first place.
    }
    ◊p{
        First, I would say get rid of clutter, if your new soldier needs to read a legend,
        theres a ◊em{barbarian behind you.}
    }
    ◊p{
        Next, we need to know what a new recruit needs to know.
        We need to know what a seasoned veteran can tell you in their sleep.
    }
}
◊section[#:id "in_their_sleep"]{
    ◊h2{Interview with a crusty veteran.}
    ◊p[#:id "crust"]{
        Things I can tell you in my sleep?
        To this day I know black moth trail takes ◊em{20 minutes by foot}, and ◊em{10 minutes by horse},
        but I'd never do that to a horse.
    }
    ◊p{
        ◊em[#:id "question"]{
            Anything else?
           }
    }
     ◊p[#:id "crust"]{
         Why, yes.
         I need to know ◊em{which way round the border} it is,
         Choke points, weak points, shortcuts, and how long till reinforcments arrive.
    }
}
◊section[#:id "List"]{
    ◊h2{Designing the map.}
    ◊p{Things we must consider:}
    ◊ul{
        ◊li{Time by foot (factor in terrain difficulty)}
        ◊li{Time with other means. (you, and a barbarian can have a horse.)}
        ◊li{location specific details.}
        ◊li{Navigate based on the border as the main landmark (clockwise/'clockwise == east/west)}
        ◊li[#:id "paragraph"]{
            ◊p{
                Distance on our map must corespond to time,
                and we need clear markers of important information that don't
                require a legend.
              }
           }
    }
    ◊figure{
    ◊img[#:src "cutout.png" #:alt "Cutting up our map."]{}
    ◊figcaption{
        ◊em{Snip Snip Snip}
    }
    ◊p{
        So we remove extra information,
            and have room for(a whole dimensionful)
        critical information.
    }
    }
    ◊figure{
    ◊img[#:src "Scaledlinear.svg" #:alt "A stright line map"]{}
    ◊figcaption{
        ◊p{
           ◊em{
               Now it has more meaning for patroling recruits.◊br{}notice how the trail is longer now?}
          }
        

    }
    
}}
◊summary{

    ◊h2{◊em{But why?}}
    ◊p{
        Maps are confusing.
    }
    ◊p{
        Take that last figure. Now map it to a navigation app.
        Do I really care about a sattelite view of the entire city?◊br{}
        Of the block?
        Am I bombing someone?
        ◊br{}
        Hell no! I want to glance and instantly understand the ◊em{Hazard ahead}.
        I want a clear unerstanding of the 5 exit highway, and never ◊em{ever} miss a turn.
    }
    ◊p{
        Many of us take 2D maps for granted, but most of us don't ◊em{really} use them all too often.
        When we follow GPS instructions, we think linearly.
        ◊br{}We are told exactly what do, eyes on the road.
        Good luck driving with a paper map, though...
    }
    ◊p{
        Most of the 3D/2D representation on common map apps waste screen space, and might
        even distract drivers. Games tend to use tiny minimaps, but designers go around them and add
        floating markers in game, effectively making open-world games 1Dimensional.
    }
    ◊p{
        Many projects during ◊a[#:href "https://twitter.com/interhackt_"]{#Interhackt} involved representing concepts on a 2D map.
        Someone named Adam mentioned user testing
        which kept showing general confusion and slow time to read for 2D graphs of data.
        That reminded me of an old cartography ◊a[#:href "https://somethingaboutmaps.wordpress.com/2015/09/28/a-matter-of-perspective/"]{blogpost} that explored this idea.
    }
    ◊p{
        I highly recommend you check it out!
    }
    ◊p{
        Hopefully, we can all find more and more things that can be boiled down to 1D graphs, freeing up
        space in our heads(and screens) for more interesting problems.
    }
}
}

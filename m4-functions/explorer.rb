def destinations(location)
    if location == "Midgard"
        return """Which is the Norse name for Earth, though a direct translation would be closer to Middle Ground. Midgard lies somewhere in the center of Yggdrasil, bordered by Nilfheim, the Realm of ice to the north, and Muspelheim, the Realm of fire to the south. Midgard contains all of Earth and is surrounded by an impassable ocean, guarded by the sea serpent Jormungandr. The Jotunn (Giant) serpent also makes an appearance in the game, after being awakened by Kratos in the Lake of Nine, where he has been sleeping since a devastating battle against his fated nemesis, Thor. Midgard is the largest explorable region in the game, and is home to mostly mortals and humans, though gods and other mythological creatures often pass through or exert their influence there. 

        You can go to: [Q to quit]
        - Alfheim
        - Helheim
        - Jötunheim
        - Muspelheim
        - Niflheim
        """
    elsif location == "Alfheim"
        return """Or Alfheimr, is the Realm of the Elves. Also called Ljosalfheim in Norse Mythology, the land of the elves is usually torn between the warring forces of Light and Dark. Each fights for control of The Light of Alfheim, a source of power that illuminates the Realm and also powers the Bifröst bridge in connecting the Realms together. While the Light Elves control the Light of Alfheim, its radiance fills the Realm, and the skies are bright and blue, but while the Dark Elves control it, the light is smothered and the skies turn red.

        You can go to: [Q to quit]
        - Helheim
        - Jötunheim
        - Muspelheim
        - Niflheim
        - Midgard
        """
    elsif location == "Helheim"
        return """Also known as Hel. While not normally defined as a full Realm by itself in Norse Mythology, Hel is the land of the dead, where most deceased beings come to rest. Only those who die honorably in battle are allowed to escape it's icy clutches, and enjoy the endless feasting of Valhalla instead. Hel mostly appears in later sources of Norse Mythology, though many different interpretations of it exist. In God of War it is a land of pressing darkness and deathly cold. Those who are unfortunate enough to die as criminals, or of disease, mishap, or old age, are bound to spend eternity in Helheim, to live endlessly tormented by cruel visions of their past life. 

        You can go to: [Q to quit]
        - Jötunheim
        - Muspelheim
        - Niflheim
        - Midgard
        - Alfheim
        """
    elsif location == "Jotunheim"
        return """ The Realm of the Giants. The Jotnar, or Jotunn, as they are known in Norse Mythology, are an ancient race descended from Ymir, the giant that Odin slew to make Midgard. Although they are mostly mortal, giants are incredibly powerful creatures that can live for many thousands of years. Despite their name, they also come in all shapes and sizes, ranging from human-sized Jotunn to the great serpent Jormungandr. Jötunheim is a secretive Realm, sealed off from many of the others in an attempt to prevent Odin's genocide of their race. A genocide prompted by the prophecy that they would destroy him come Ragnarok, the end of days.

        You can go to: [Q to quit]
        - Muspelheim
        - Niflheim
        - Midgard
        - Alfheim
        - Helheim
        """
    elsif location == "Muspelheim"
        return """The Realm of Fire,  The source of all heat in the Nine Realms, Muspelheim is a land of raging volcanoes and ash-blackened skies. It's home to the Fire Giants, and guarded by Surtr, their leader. In Norse Mythology the Sons of Muspelheim are those who will break the Bifrost and begin the events of Ragnarok.

        You can go to: [Q to quit]
        - Niflheim
        - Midgard
        - Alfheim
        - Helheim
        - Jötunheim
        """
    elsif location == "Niflheim"
        return """Niflheim is described as the Realm of Fog, and one of the two primordial realms (the other being Muspelheim). Originally a land of relentless cold, it has warmed somewhat with the passage of time. However, due to Ivaldi's curse, the mist that fills this realm is now poisonous and noxious. Later on it became the home of Hel, the goddess of death, and the underworld that shares her name.

        You can go to: [Q to quit]
        - Midgard 
        - Alfheim
        - Helheim 
        - Jötunheim
        - muspelheim
        """
    end
    return location
end

def introduction()
    return """Please make sure you capitalize or, you will have to return to Midgard to continue with your adventure through the realms! You are starting in the Mystical Gateway!"""
end

def adventure(location)
    while true
        if location == "Midgard" or location == "Alfheim" or location == "Helheim" or location == "Jotunheim" or location == "Muspelheim" or location == "Niflheim"
            return true
        elsif location == "Q"
            return true
        else
            return false
        end
    end
end

def mis_adventure(attempt)
    if attempt == "Q"
        return True
    elsif attempt == "Midgard" or attempt == "Alfheim" or attempt == "Helheim" or attempt == "Jotunheim" or attempt == "Muspelheim" or attempt == "Niflheim"
        return True
    else
        return False
    end
end

def main()
    puts introduction()
    location = "Midgard"
    while true
        puts "You are in #{location}"
        puts destinations(location)
        puts "Where do you want to go?"
        attempt = gets.chomp.capitalize()
        if attempt == "Midgard" or attempt == "Alfheim" or attempt == "Helheim" or attempt == "Jotunheim" or attempt == "Muspelheim" or attempt == "Niflheim"
            location = attempt
        elsif attempt == "Q"
            break
        else
            puts "You cannot go to #{attempt}, returning to #{location}!"
        end
    end
end


main()
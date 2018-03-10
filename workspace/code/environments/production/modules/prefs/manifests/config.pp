class prefs::config inherits prefs {

    notify {"our colors":
        message => "Color: ${color}, car: ${car}"
    }

}

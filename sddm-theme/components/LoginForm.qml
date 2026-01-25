Item {
    signal submit(string user, string pass)

    TextField { id: u }
    TextField { id: p }

    Button {
        text: "Login"
        onClicked: submit(u.text, p.text)
    }
}

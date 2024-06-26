use dioxus::prelude::*;

pub fn Contacts() -> Element {
    rsx! {
        div { class : "contact_bar",
            h2 { "Me contacter"}
            div { class : "contact_elements",

                div { class : "c_item",
                    div{ class : "header",
                        p {"Email"}
                        img{ src : "img/pics/mail.svg"} 
                    }
                    a {href  : "mailto:sylanecampan@gmail.com" , "sylane.campan@gmail.com"}
                }

                div { class : "c_item",
                    div{ class : "header",
                        p {"LinkedIn"}
                        img{ src : "img/pics/linked_in.svg"} 
                    }
                    a { href : "https://linkedin.com/in/sylane-campan-6bb56a230", "sylane-campan"}
                }

                div { class : "c_item",
                    div{ class : "header",
                        p {"Github"}
                        img{ src : "img/pics/github.svg"} 
                    }
                    a { href : "https://github.com/sylanecpn", "SylaneCpn"}
                }

            }

        }
    }
}
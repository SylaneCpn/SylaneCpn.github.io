#![allow(non_snake_case)]
mod md;
mod pages;
mod navbar;
mod contacts;
mod boxs;

use dioxus::prelude::*;
//use tracing::Level;
use pages::*;

#[derive(Clone, Routable, Debug, PartialEq)]
enum Route {
    #[route("/")]
    Home {},
    #[route("/about")]
    About {},
    #[route("/projects")]
    Projects {},
    #[route("/resume")]
    Resume {},
    #[route("/school")]
    School {},
    #[route("/blog")]
    Blog{},
    #[route("/:..route")]
    PageNotFound { route: Vec<String> },
}

const FAVICON: Asset = asset!("/assets/favicon.ico");


fn main() {
    // Init logger
    //dioxus_logger::init(Level::INFO).expect("failed to init logger");
    launch(App);
}

fn App() -> Element {
    rsx! {
        // link { rel: "stylesheet", href: "main.css" }
        document::Link { rel: "icon", href: FAVICON }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/main.css") }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/md.css") }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/navbar.css") }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/prism.css") }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/box.css") }
        document::Link { rel: "stylesheet",href: asset!("./assets/css/contacts.css") }
        Router::<Route> {}
        document::Script { src: asset!("./assets/js/prism.js") }
        
    }
}




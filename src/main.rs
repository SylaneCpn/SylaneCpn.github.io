#![allow(non_snake_case)]
mod md;
mod pages;
mod navbar;
mod contacts;
mod boxs;

use dioxus::prelude::*;
use tracing::Level;
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


fn main() {
    // Init logger
    dioxus_logger::init(Level::INFO).expect("failed to init logger");
    launch(App);
}

fn App() -> Element {
    rsx! {
        // link { rel: "stylesheet", href: "main.css" }
        
        Router::<Route> {}
        
    }
}




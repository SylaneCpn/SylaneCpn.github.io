#![allow(non_snake_case)]

use dioxus::prelude::*;
use pulldown_cmark::Parser;

#[derive(Props, Clone, PartialEq)]
pub struct MarkdownProps {
    #[props(default)]
    id: Signal<String>,
    #[props(default)]
    class: Signal<String>,

    content: ReadOnlySignal<String>,
}


/// Render some text as markdown.
fn Markdown(props: MarkdownProps) -> Element {
    let content = &*props.content.read();
    let parser = Parser::new(content);

    let mut html_buf = String::new();
    pulldown_cmark::html::push_html(&mut html_buf, parser);

    rsx! {
        div {
            id: "{&*props.id.read()}",
            class: "{&*props.class.read()}",
            dangerous_inner_html: "{html_buf}"
        }
    }
}

// Api for markdown.
#[component]
pub fn Md(content : &'static str) -> Element {
    let class = use_signal(|| String::from("md_class"));
    // link { rel: "stylesheet", href: "md.css" }
    rsx! {
        
        div { class: "md", Markdown { class: class, content: content } }
        script { "Prism.highlightAll()" }
    }
}

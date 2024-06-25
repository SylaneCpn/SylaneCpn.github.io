use dioxus::prelude::*;

#[derive(PartialEq, Clone, Props)]
pub struct BoxProps {
    title : &'static str,
    children: Element,
}

#[component]
pub fn Box(props : BoxProps) -> Element {
    let mut open = use_signal(|| false);
    rsx! {
        div {class : "box", onclick : move |_| open.toggle(),
            h3 {class : "box_title", "{props.title}"}
            if open() {
            div { class : "box_content",
                {props.children}
            }
            
            }

        }
    }
}
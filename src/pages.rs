#![allow(non_snake_case)]

use dioxus::prelude::*;
use crate::md::Md;
use crate::navbar::Navbar;
use crate::contacts::Contacts;
use crate::boxs::Box;
use crate::Route;


//##############################################################
//Md pages
#[component]
pub fn About() -> Element {
    rsx! {
    Navbar{}
    Md { content : include_str!("../md/about_fr.md")}
    Contacts {}
    }
}

#[component]
pub fn Home() -> Element {
    rsx! {
        Navbar{}
        Md { content : include_str!("../md/home_fr.md")}
        Contacts {}
    }
}


#[component]
pub fn Projects() -> Element {
    rsx! {
        Navbar{}
        Md { content : include_str!("../md/projects_fr.md")}
        Box {title : "SCLoud" , children : rsx! {Md {content : include_str!("../md/projects_fr/scloud.md")}}}
        Box {title : "Pong.Js" , children : rsx! {Md {content : include_str!("../md/projects_fr/pong.md")}}}
        Box {title : "Snake.Js" , children : rsx! {Md {content : include_str!("../md/projects_fr/snake.md")}}}
        Box {title : "Prestation musicale lors du \"Dellec en caisse\"" , children : rsx! {Md {content : include_str!("../md/projects_fr/dellec.md")}}}
        Box {title : "Championnat UNSS Planche à voile 2016" , children : rsx! {Md {content : include_str!("../md/projects_fr/unss.md")}}}
        Box {title : "Les dons de la mer" , children : rsx! {Md {content : include_str!("../md/projects_fr/c_genial.md")}}}
        Box {title : "Championnat de Guadeloupe de calcul mental niveau CE2" , children : rsx! {Md {content : include_str!("../md/projects_fr/maths.md")}}}
        h2 {"A venir..."}
        Box {title : "PicMaker" , children : rsx! {Md {content : include_str!("../md/projects_fr/picmaker.md")}}}
        Contacts {}
    }
}

#[component]
pub fn Resume() -> Element {
    rsx! {
        Navbar{}
        Md { content : include_str!("../md/resume_fr.md")}
        Contacts {}
    }
}

#[component]
pub fn School() -> Element {
    rsx! {
        Navbar{}
        Md { content : include_str!("../md/school_fr.md")}
        h2 {"Cursus ENIB"}
        Box {title : "Projet OS" , children : rsx! {Md {content : include_str!("../md/school_fr/os.md")}}}
        Box {title : "Projet Robot" , children : rsx! {Md {content : include_str!("../md/school_fr/robot.md")}}}
        Box {title : "Reseau de capteurs" , children : rsx! {Md {content : include_str!("../md/school_fr/sensor.md")}}}
        Box {title : "Asservissement d'une résistance chauffante controllée en puissance" , children : rsx! {Md {content : include_str!("../md/school_fr/IPS.md")}}}
        Box {title : "Traitement d'images" , children : rsx! {Md {content : include_str!("../md/school_fr/img.md")}}}
        Box {title : "Recycl'ENIB" , children : rsx! {Md {content : include_str!("../md/school_fr/cpo.md")}}}
        Box {title : "Monster Runner" , children : rsx! {Md {content : include_str!("../md/school_fr/IPI.md")}}}
        h2 { "Cursus Université de Sherbrooke"}
        Box {title : "Acoustique fondamentale" , children : rsx! {Md {content : include_str!("../md/canada/acoustic.md")}}}
        Box {title : "Méthode des éléments finis" , children : rsx! {Md {content : include_str!("../md/canada/finite_elements.md")}}}
        Box {title : "Contrôle actif de bruits et vibrations" , children : rsx! {Md {content : include_str!("../md/canada/noise_waves.md")}}}
        Box {title : "Turbulences : Modélisation et expérimentations" , children : rsx! {Md {content : include_str!("../md/canada/turbulences.md")}}}
        h2 {"Stages"}
        Box {title : "BLUE SOLUTIONS 2023" , children : rsx! {Md {content : include_str!("../md/school_fr/BS2023.md")}}}
        Box {title : "ENAG 2022" , children : rsx! {Md {content : include_str!("../md/school_fr/ENAG2022.md")}}}
        h2 {"Autres"}
        Box {title : "Projet IHH-Warming Slate" , children : rsx! {Md {content : include_str!("../md/school_fr/IHH.md")}}}
        Contacts {}

    }
}

#[component]
pub fn Blog() -> Element {
    rsx! {
        Navbar{}
        Md { content : include_str!("../md/blog_fr.md")}
        // Box {title : "Rendre Python plus performant avec du C ou du Rust" , children : rsx! {Md {content : include_str!("../md/blog_fr/opt_python.md")}}}
        Box {title : "Compiler son projet C sans makefile" , children : rsx! {Md {content : include_str!("../md/blog_fr/simple_c.md")}}}
        // Box {title : "Un script Python pour aproximer une fonction en connaissant quelques points" , children : rsx! {Md {content : include_str!("../md/blog_fr/aprox_python.md")}}}
        // Box {title : "Comment ce site est fait ?" , children : rsx! {Md {content : include_str!("../md/blog_fr/how_it_is_made.md")}}}
        Contacts {}
    }
}

#[component]
pub fn PageNotFound(route : Vec<String>) -> Element {
    let mut  path : String = route.into_iter().map(|x| format!("{}/",x)).collect();
    path.pop();
    rsx! {
        Navbar{}

        h1{"Page Introuvable"}
        div{
            class : "centered",
            h2{"La page \"{path}\" n'existe pas !"}
        }
        div {
            class : "centered",
            Link {to: Route::Home{} ,  style : "margin-top: 200px; margin-bottom : 200px;" ,  "Revenez à l'accueil."}
        }
        
        Contacts {}
    }
}

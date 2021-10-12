<style>
    @font-face {
        font-family: "Eau";
        src: url("/website/eau_sans_book.otf") format("opentype");
    }
    :root {
        --secondary-color: #adadad;
        --cta-primary-color: white;
        --cta-secondary-color: black;
        --cta-primary-background-color: #f78e00;
        --cta-secondary-background-color: #96d4e9;
        --primary-nav-color: #f8f8f8;
    }

    header.header {
        position: sticky;
        top: 0;
        z-index: 1000;
    }

    header.header nav.navigation,
    header.header nav.navigation a {
        font-size: 16px;
    }

    header.header nav,
    header.header nav a,
    header.header nav a:link {
        line-height: unset;
        vertical-align: middle;
        text-decoration: none;
        text-transform: capitalize;
    }
    header.header nav a:hover,
    header.header nav button:focus,
    header.header nav button:hover {
        text-decoration: underline;
    }
    header.header nav.navigation h1,
    header.header nav.navigation h1 a {
        font-size: 18pt;
        color: #7a7a7a;
        font-family: "Eau";
    }

    .navigation--primary,
    footer nav .row {
        padding: 0;
    }

    /* Wrapper ends */ /* NAV Starts */
    header {
        background-color: var(--primary-nav-color);
        box-shadow: 0 0 10px 2px var(--secondary-color);
        border-bottom: 1px solid #d8d8d8;
    }

    .navigation {
        grid-template-columns: 0 2fr auto 0;
        display: grid;
    }

    .navigation a.navigation-item--active {
        text-decoration: underline;
    }

    .navigation h1 {
        display: inline-block;
        margin: 0 0.5rem;
        color: #475058;
        font-family: "Overpass", sans-serif;
        letter-spacing: -0.05rem;
        font-weight: 200;
    }

    .navigation a,
    .navigation button,
    .navigation .logo {
        display: inline-block;
    }

    .navigation a,
    .navigation button {
        color: #475058;
        text-decoration: none;
        padding: 0.2rem .2rem;
        background: none;
    }

    .navigation ul {
        list-style: none;
        margin: 0;
        padding: 0;
        display: grid;
    }

    .navigation ul li {
        padding: 0;
        margin: 0 0.5rem;
    }

    .navigation--primary > ul {
        grid-auto-flow: column;
    }

    .navigation--primary > ul > li {
        margin: 0 0.5rem;
    }

    .kie-tooltip:before {
        display: none;
        max-width: 12rem;
        background-color: var(--secondary-color);
        color: var(--primary-nav-color);
        z-index: 100;
        margin-top: 2.5rem;
        text-align: center;
        border-radius: 6px;
        padding: 5px 0;
        content: attr(title);
        position: absolute;
    }

    .kie-tooltip:after {
        content: "";
        position:absolute;
        display: none;
        top: 3.5rem;
        transform: translateY(-75%) translateX(50%);
        border-left: 5px solid transparent;
        border-right: 5px solid transparent;
        border-bottom: 5px solid var(--secondary-color);
    }

    .kie-tooltip:hover:after,
    .kie-tooltip:focus:after,
    .kie-tooltip:focus-visible:after {
        display: block;
    }

    .kie-tooltip:hover:before,
    .kie-tooltip:focus:before,
    .kie-tooltip:focus-visible:before {
        display: block;
    }

    /* Responsive primary navigation */
    @media screen and (max-width: 1023px) {
        header.header .navigation--primary {
            display: none;
        }
    }
    @media screen and (max-width: 750px) {
        header.header .navigation--primary > ul > li {
            margin: 0 0.2rem;
        }
    }
    @media screen and (max-width: 700px) {
        header.header .navigation--primary > ul > li > a {
            padding: 1rem 0.3rem 1.2rem;
        }
        header.header .navigation--primary > ul > li {
            margin: 0 0.1rem;
        }
    }
    @media screen and (max-width: 650px) {
        header.header nav .navigation--logo h1 {
            margin: 0;
        }
        header.header nav .navigation--logo h1 a {
        }
        header.header .navigation--primary > ul > li > a {
            padding: 1rem 0.1rem 1.1rem;
        }
    }
    @media screen and (max-width: 500px) {
        header.header .navigation .logo {
            width: 50px;
            height: 50px;
        }
        header.header .navigation button {
            padding: 1rem;
            margin: 0;
        }
    }

    .navigation--primary-right .dropdown--title:after {
        position: relative;
        top: .75rem;
    }

    .navigation--primary > ul > li > a,
    .navigation--primary > ul > li .dropdown--title {
        padding: 1rem 0.3rem
    }

    .navigation .logo {
        width: 60px;
        height: 60px;
        background-size: cover;
        box-shadow: 0 0 0 7px #f8f8f8;
        border-radius: 100%;
        border-bottom: 2px solid #ddd;
        vertical-align: bottom;
        justify-self: right;
        top: 1rem;
        z-index: 2;
        margin: unset;
        position: inherit;
    }

    .navigation--logo {
        align-self: center;
        display: inline;
    }

    .navigation--primary {
        align-self: center;
        display: inline-block;
    }

    .navigation--primary-right {
        grid-column: 3;
        display: flex;
        align-items: flex-end;
        justify-content: center;
        flex-direction: column;
    }

    .navigation--primary-right-top {
        align-self: center;
    }

    .navigation--primary-right-bottom {
        align-self: center;
        border-top: black solid thin;
    }

    .navigation--primary-left {
        grid-column-start: 2;
    }

    .navigation--secondary, .navigation--secondary-spacer {
        background-color: lightgray;
        border-top: 3px solid var(--secondary-color);
        align-items: center;
    }

    .navigation--secondary-spacer {
        grid-column: 1/3;
    }

    .navigation--secondary {
        grid-column: start/end;
    }

    .navigation--secondary a {
        text-decoration: none;
        padding: 0 1rem;
        font-weight: unset;
        color: unset;
        text-transform: unset;
        line-height: unset;
        height: unset;
        display: inline;
    }

    .navigation-item--active,
    .navigation-item--active a span {
        text-decoration: underline;
    }

    /* NAV Ends */ /* Responsive Menu Starts */
    @media screen and (min-width: 576px) {
        .navigation h1 {
            border: none;
        }
    }

    @media screen and (min-width: 982px) {
        .navigation {
            grid-template-columns: 2% 2fr auto 2%;
        }

        .responsive-menu-button {
            visibility: hidden;
            opacity: 0.3;
            display: none !important;
        }

        .dropdown {
            position: relative;
        }

        .dropdown:hover .dropdown--menu,
        .dropdown:focus-within .dropdown--menu {
            opacity: 1;
            transform: rotateX(0) translateX(-50%);
            visibility: visible;
        }

        .dropdown--menu {
            background-color: var(--primary-nav-color);
            border-radius: 4px;
            box-shadow: 0 0.15em 0.25em rgba(0, 0, 0, 0.25);
            padding: 0.5em 0;
            min-width: 15ch;
            position: absolute;
            top: calc(100% - 0.25rem);
            left: 5rem;
            z-index: 100;
            transform: rotateX(-90deg) translateX(-50%);
            transform-origin: top center;
            opacity: 0.3;
            transition: 280ms all 120ms ease-out;
            visibility: hidden;
        }

        .dropdown .dropdown--menu a {
            display: block;
            padding: 0.5em;
        }

        .dropdown--title {
            background-color: transparent;
            border: none;
            font-weight: normal;
            color: #475058;
            display: inline-flex;
            align-items: center;
        }

        .dropdown--title:after {
            content: "";
            border: 0.5rem solid transparent;
            margin-left: 0.25em;
            transform: translateY(0.15em);
            border-top-color: rgba(71, 80, 88, 0.45)
        }
    }

    @media screen and (max-width: 1023px) {
        .navigation--primary-right {
            visibility: hidden;
            transform: rotateX(-90deg) translateX(-50%);
            opacity: 0.3;
            display: none;
        }

        .responsive-menu-button {
            visibility: visible;
            opacity: 1;
            position: absolute;
            right: 0;
            border: none;
            margin: 20px;
        }
    }

    .navigation--responsive {
        width: 300px;
        height: 100vh;
        background: rgba(255, 255, 255, 0.9);
        position: fixed;
        z-index: 100;
        top: 0;
        right: -320px;
        box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2);
        border-left: 2px solid #5f5f5f;
        transition: right 0.5s;
        transform: rotate3d(0, 0, 0, 0deg);
        padding: 10px 20px 0;
    }

    .navigation--responsive .close-button {
        display: block;
        text-align: right;
        right: 0;
        position: relative;
        text-decoration: none;
    }

    .navigation--responsive .close-button + h4 {
        margin-top: 10px;
        outline: none;
    }

    .navigation--responsive ul {
        list-style: none;
        margin: 0;
        padding: 0;
        color: #475058;
    }

    .navigation--responsive ul ul {
        padding-left: 2.5rem;
    }

    .navigation--responsive ul li {
        margin: 0;
        padding: 5px 0;
    }

    .navigation--responsive h4,
    .navigation--responsive li a {
        color: #475058;
        font-family: "Overpass", sans-serif;
    }

    .navigation--responsive li a {
        font-size: 16px;
        font-weight: 700;
    }

    .navigation--responsive h4 {
        font-size: 1.8rem;
        font-weight: 800;
        border-bottom: 1px solid #d1d7dc;
        padding-bottom: 15px;
        margin: 20px 0 7px;
        text-transform: uppercase;
    }

    .responsive-menu-opened {
        overflow: hidden;
    }

    .responsive-menu-opened #overlay {
        opacity: 1;
    }

    .responsive-menu-opened .navigation--responsive {
        right: 0;
        overflow-y: scroll;
    }
</style>
<header class="header">
    <nav class="navigation" aria-label="Main Navigation">
        <div class="navigation--primary-left">
            <div class="navigation--logo">
                <a class="logo ${(active_menu!config.active_menu!"kie")?lower_case}" aria-label="logo"></a>
                <h1><a href="/" class="logo-text <#if ((active_menu!config.active_menu!"kie")?lower_case == "kie")>navigation-item--active</#if>"
                       aria-label="Home"></a></h1>
            </div>
            <div class="navigation--primary">
                <#include (((active_menu)!config.active_menu!"kie")?lower_case + "-submenu.ftl")>
            </div>
        </div>
        <div class="navigation--primary-right">
            <div class="navigation--primary">
                <ul>
                    <li>
                        <a aria-label="KIE" href="https://kie.org" title="KIE Group Website" class="kie-tooltip">KIE</a>
                    </li>
                    <li>
                        <a aria-label="Kogito" href="https://kogito.kie.org/"
                           title="Cloud-native business automation" class="kie-tooltip">Kogito</a>
                    </li>
                    <li>
                        <a aria-label="Drools" href="https://drools.org/"
                           class="kie-tooltip" title="Business rule management">Drools</a>
                    </li>
                    <li>
                        <a aria-label="jBPM" href="https://jbpm.org/"
                           class="kie-tooltip" title="Business process management">jBPM</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="navigation--secondary">
            <#-- Secondary nav depending on what is being viewed will go here -->
        </div>
        <button type="button" class="responsive-menu-button open-button" aria-expanded="false">&#9776;</button>
    </nav>
</header>
<div class="navigation--responsive">
    <ul>
        <li>
            <a href="#" class="responsive-menu-button close-button">✕</a>
            <#include (((active_menu)!config.active_menu!"kie")?lower_case + "-submenu.ftl")>
            <h3>
                KIE Projects
            </h3>
            <ul>
                <li><a aria-label="KIE" href="https://kie.org/">KIE</a></li>
                <li><a aria-label="Kogito" href="https://kogito.kie.org/">Kogito</a></li>
                <li><a aria-label="Drools" href="https://drools.org/">Drools</a></li>
                <li><a aria-label="jBPM" href="https://jbpm.org/">jBPM</a></li>
            </ul>
        </li>
    </ul>
</div>

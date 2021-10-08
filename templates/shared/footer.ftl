    <style>
        .redhat-footer.content {
            padding: 0 13rem;
            width: 100%;
        }
        .redhat-footer .grid-wrapper {
            padding: .5rem 0;
        }
        .redhat-footer .grid-wrapper {
            display: grid;
            grid-template-columns: repeat(12, 1fr);
            grid-gap: 1em;
            clear: both;
        }
        .redhat-footer .licence {
            grid-column: 5/9;
            align-self: center;
            justify-self: center;
        }
        .redhat-footer .licence a {
            color: #fff;
            font-size: 1rem;
            font-weight: 200;
        }
        .redhat-footer .redhat {
            grid-column: 9/12;
            align-self: center;
            justify-self: end;
            font-size: 1rem;
            font-weight: 200;
        }
        .redhat-footer .redhat-logo {
            grid-column: 12/13;
            justify-self: end;
            align-self: center;
            width: 6rem;
        }
        .redhat-footer a {
            line-height: 1.5rem;
            font-weight: 400;
            cursor: pointer;
            text-decoration: underline;
            color: #9BCAFA;
        }
        .redhat-footer {
            font-family: 'Open Sans', Arial, sans-serif;
            color: #fff;
            line-height: 1rem;
            background-color: #000;
        }
        @media screen and (max-width: 990px){
            .redhat-footer.content {
                padding: unset;
            }
            .redhat-footer .licence {
                grid-column: 2/8;
            }
            .redhat-footer .redhat {
                grid-column: 9;
            }
            .redhat-footer .redhat-logo {
                grid-column: 10;
            }
        }
    </style>
    <div class="content redhat-footer">
        <div class="grid-wrapper">
    <span class="licence">
      <i class="fab fa-creative-commons"></i><i class="fab fa-creative-commons-by"></i> <a
                href="https://creativecommons.org/licenses/by/3.0/" target="_blank">CC by 3.0</a> | <a
                href="https://www.redhat.com/en/about/privacy-policy">Privacy Policy</a>
    </span>
            <span class="redhat">
      Sponsored by
    </span>
            <span class="redhat-logo">
      <a href="https://www.redhat.com/" target="_blank"><img src="https://www.redhat.com/profiles/rh/themes/redhatdotcom/img/logo.svg"></a>
    </span>
        </div>
    </div>

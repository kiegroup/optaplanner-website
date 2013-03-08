---
title: Source code
layout: base
---
# #{page.title}

The source control management is [Git](http://git-scm.com/).
The blessed repository's are hosted on GitHub.

These are the OptaPlanner repositories:

* [optaplanner](https://github.com/droolsjbpm/optaplanner): The source code for OptaPlanner (including examples and documentation).

    * Get the source code locally:

            $ git clone git@github.com:droolsjbpm/optaplanner.git
            ...

    * Build it:

            $ cd optaplanner
            $ mvn clean install -DskipTests
            ...

    * Run the examples:

            $ cd optaplanner-examples
            $ mvn exec:exec
            ...

* [optaplanner-website](https://github.com/droolsjbpm/optaplanner-website): The source code for this website.

    * Get the source code locally:

            $ git clone git@github.com:droolsjbpm/optaplanner-website.git
            ...

    * Build it:

            $ cd optaplanner-website
            $ ./build clean build
            ...

    * Show it:

            $ firefox _site/index.html
            ...


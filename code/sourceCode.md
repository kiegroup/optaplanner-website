---
title: Source code
layout: base
---
# #{page.title}

We use [Git](http://git-scm.com/) as source control management.
The blessed repositories are hosted on GitHub.

There are several OptaPlanner repositories:

* [optaplanner](https://github.com/droolsjbpm/optaplanner): The source code for OptaPlanner itself, examples and documentation.

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

* [optaplanner-website](https://github.com/droolsjbpm/optaplanner-website): The source code for this website and presentations.

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

**Pull requests are welcome!**

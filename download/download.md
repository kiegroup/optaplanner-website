---
title: Download
layout: base
---
# #{page.title}

## Distribution zip

The OptaPlanner distribution zip includes binaries, documentation, examples and sources.

* ![](download.png) **[Download OptaPlanner #{site.pom.latestFinal.version}](#{site.pom.latestFinal.distributionZip})**

    * Release date: `#{site.pom.latestFinal.releaseDate}`

    * License: [ASL 2.0](../code/license.html)

* Older community releases: Check [the release archive](http://download.jboss.org/drools/release/).

* Red Hat subscription releases: Check [the product download site](http://www.jboss.com/downloads/).

## Maven, Gradle, Ivy or Buildr

The OptaPlanner jars are also available in [the central maven repository](http://search.maven.org/#search|ga|1|org.optaplanner)
(and also in [the JBoss maven repository](https://repository.jboss.org/nexus/index.html#nexus-search;gav~org.optaplanner~~~~)).

If you use Maven, just add a dependency in your `pom.xml`:

    <dependency>
      <groupId>org.optaplanner</groupId>
      <artifactId>optaplanner-core</artifactId>
      <version>#{site.pom.latestFinal.version}</version>
    </dependency>

This is similar for Gradle, Ivy and Buildr.

## Non-Final releases

**Non-Final releases are the best way to test drive new features and API's
and provide feedback before we lock down their API and behaviour with a Final release.**
We welcome that feedback on [the forum](../community/forum.html), [chat](../community/chat.html)
or [the issue tracker](../code/issueTracker.html).

### Alpha's, Beta's and CR's

A Beta should work pretty reliably (it passes automated testing), but its new API's might still change before a CR is released.
A CR should be almost identical to the Final release.

* ![](download.png) [Download OptaPlanner #{site.pom.latest.version}](#{site.pom.latest.distributionZip})

    * Release date: `#{site.pom.latest.releaseDate}`

Or with Maven:

    <dependency>
      <groupId>org.optaplanner</groupId>
      <artifactId>optaplanner-core</artifactId>
      <version>#{site.pom.latest.version}</version>
    </dependency>

### Nightly snapshots

Nightly snapshots are very unstable binaries, build by [our build server](../code/continuousIntegration.html).

* ![](download.png) [Download OptaPlanner #{site.pom.nightly.version}](#{site.pom.nightly.distributionZip})

---
title: Drools Planner renamed to OptaPlanner
layout: base
---
# Drools Planner renamed to OptaPlanner

As of version `6.0.0.Beta1`, **Drools Planner has been renamed to OptaPlanner**.

## Why change the name?

OptaPlanner is the new name for Drools Planner.
OptaPlanner is now standalone, but can still be optionally combined with the Drools rule engine
for a powerful declarative approach to planning optimization.

* OptaPlanner has graduated from the [Drools](http://www.jboss.org/drools) project
to become a top-level [JBoss Community](http://www.jboss.org/) project.

    * OptaPlanner (the planning engine) joins its siblings Drools (the rule engine) and jBPM (the workflow engine)
in the KIE group.

* Our commitment to Drools hasn't changed.

    * The efficient Drools rule engine is still the recommended way to do score calculation.

    * Alternative score calculation options, such as pure Java calculation (no Drools), also remain fully supported.

## How will this affect my business?

From a business point of view, there's **little or no change**:

* The mission remains unchanged:

    * We're still 100% committed to put *business resource optimization* in the hands of normal Java developers.

* The license remains unchanged (Apache Software License 2.0). It's still the same open source license.

We're even preparing to make support available to Red Hat customers.

## What has changed?

* The website has changed to [http://www.optaplanner.org](http://www.optaplanner.org)

* The distributions artifacts have changed name:

    * Jar names changes:

        * `drools-planner-core-*.jar` is now `optaplanner-core-*.jar`

        * `drools-planner-benchmark-*.jar` is now `optaplanner-benchmark-*.jar`

    * Maven identification groupId's and artifactId's changes:

        * groupId `org.drools.planner` is now `org.optaplanner`

        * artifactId `drools-planner-core` is now `optaplanner-core`

        * artifactId `drools-planner-benchmark` is now `optaplanner-benchmark`

    * As usual, for more information see the Upgrade Recipe in the download zip.

* The API's namespaces has changed. As usual, see the Upgrade Recipe on how to deal with this efficiently.

    * Starting from 6.1.0.Final, OptaPlanner will have a 100% backwards compatible API.

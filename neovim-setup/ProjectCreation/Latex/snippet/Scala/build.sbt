val scala3Version = "3.0.0"

lazy val root = project
  .in(file("."))
  .settings(
    name := "Project Euler - Exercise 1",
    version := "1.0.0",

    scalaVersion := scala3Version,

    libraryDependencies += "org.scalatest" %% "scalatest" % "3.2.9" % "test"
  )

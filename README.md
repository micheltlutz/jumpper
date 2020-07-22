<p align="center">
    <img src="doc/banner.png" width="500" height="127" alt="jumpper">
    <br>
    <br>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.2-brightgreen.svg" alt="Swift 5.2">
    </a>
    <a href="https://swift.org/package-manager">
        <img src="https://img.shields.io/badge/swiftpm-compatible-brightgreen.svg?style=flat" alt="Swift Package Manager" />
    </a>
    <img src="https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat" alt="Mac + Linux" />
    <img src="https://github.com/jumpper/jumpper/workflows/Swift/badge.svg?branch=develop" alt="jumpper tests" />
    <a href="https://raw.githubusercontent.com/jumpper/jumpper/develop/LICENSE">
    	<img src="https://img.shields.io/github/license/jumpper/jumpper" alt="License" />
    </a>
    <a href="https://codebeat.co/a/michel-anderson-lutz-teixeira/projects/github-com-jumpper-jumpper-develop">
    	<img src="https://codebeat.co/badges/31d5d9f4-77af-4e51-9523-30f55ae9a069" alt="codebeat badge" />
    </a>
</p>

-----

Welcome to **jumpper**. Is an open source framework, which is independent of other web frameworks or toolkits available on the market, such as Vapor, Kitura and Perfect. It can be used in conjunction with any of them and even alone. This shows how simple it is to build HTML pages using only **Swift**.

The idea of this library is to facilitate the creation of static or dynamic pages.

About 10 years ago I developed a library similar to this one, but in another language, it streamlined many projects that I developed.

I decided to bring these concepts to the language I use today.

The project is still under development, feel free to collaborate and leave suggestions, fork and share.

I hope it will be useful for more developers.

> Let`s code.


# Documentation

- [Online Doc](http://jumpper-docs.micheltlutz.me)

# Vapor usage

> Need Leaf installed

```swift 
import jumpper

router.get { req -> Future<View> in
     let div = Div()
     div.add("My first div with jumpper")
     return try req.view().render("base", ["title": "Hello jumpper", "body": div.getString()])
}
```
# jumpper vapor project demo

- [jumpper-demo](https://github.com/jumpper/jumpper-demo)

# Elements Video Demo

[![Watch the video](doc/thumb_video.png)](https://youtu.be/p3vQgugZ0ZQ)

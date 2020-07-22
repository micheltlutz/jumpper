<p align="center">
    <img src="doc/banner.png" width="500" height="127" alt="jumpper">
    <br>
    <br>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.1-brightgreen.svg" alt="Swift 5.1">
    </a>
</p>


![jumpper tests](https://github.com/jumpper/jumpper/workflows/Swift/badge.svg?branch=develop)
[![License](https://img.shields.io/github/license/micheltlutz/MLBootstrap)](https://raw.githubusercontent.com/jumpper/jumpper/develop/LICENSE)
[![codebeat badge](https://codebeat.co/badges/31d5d9f4-77af-4e51-9523-30f55ae9a069)](https://codebeat.co/a/michel-anderson-lutz-teixeira/projects/github-com-jumpper-jumpper-develop)

The idea of this library is to facilitate the creation of static or dynamic pages using 100% of the Swift language.

About 10 years ago I developed a library similar to this one, but in another language, it streamlined many projects that I developed.

I decided to bring these concepts to the language I use today.

The project is still under development, feel free to collaborate and leave suggestions, fork and share.

I hope it will be useful for more developers.

Let`s code.


# Documentation

- [Online Doc](http://jumpper-docs.micheltlutz.me)

# Vapor usage

> Need Leaf installed

```swift 
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

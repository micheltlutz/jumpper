<p align="center">
    <img src="doc/banner.png" width="500" height="127" alt="jumpper">
    <br>
    <br>
    <a href="https://swift.org">
        <img src="http://img.shields.io/badge/swift-5.1-brightgreen.svg" alt="Swift 5.1">
    </a>
</p>


![Swift](https://github.com/passbook/Key/workflows/Swift/badge.svg)
[![License](https://img.shields.io/github/license/micheltlutz/MLBootstrap)](https://raw.githubusercontent.com/jumpper/jumpper/develop/LICENSE)
[![codebeat badge](https://codebeat.co/badges/31d5d9f4-77af-4e51-9523-30f55ae9a069)](https://codebeat.co/a/michel-anderson-lutz-teixeira/projects/github-com-jumpper-jumpper-develop)
![Swift](https://github.com/jumpper/jumpper/workflows/Swift/badge.svg?branch=develop)


# Vapor usage

> Need Leaf installed

```swift 
router.get { req -> Future<View> in
     let div = Div()
     div.add("My first div with jumpper")
     return try req.view().render("base", ["title": "Hello jumpper", "body": div.getString()])
}
```

# Elements Demo

[![Watch the video](doc/thumb_video.png)](https://youtu.be/p3vQgugZ0ZQ)

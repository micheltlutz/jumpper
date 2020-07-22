//
// MIT License
//
// Copyright (c) 2020 micheltlutz
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation

// MARK: - H1
/**
   H1 tag element class

    ### Usage Example: ###
    ````
     H1("Heading H1")
    ````
*/
public final class H1: TypographyElementBase {
    ///Override tag element for element. Default is `h1`
    override var tag: String {
        get {
            return "h1"
        }
    }
}

// MARK: - H2
/**
   H2 tag element class

    ### Usage Example: ###
    ````
     H2("Heading H2")
    ````
*/
public final class H2: TypographyElementBase {
    ///Override tag element for element. Default is `h2`
    override var tag: String {
        get {
            return "h2"
        }
    }
}

// MARK: - H3
/**
   H3 tag element class

    ### Usage Example: ###
    ````
     H3("Heading H3")
    ````
*/
public final class H3: TypographyElementBase {
    ///Override tag element for element. Default is `h3`
    override var tag: String {
        get {
            return "h3"
        }
    }
}

// MARK: - H4
/**
   H4 tag element class

    ### Usage Example: ###
    ````
     H4("Heading H4")
    ````
*/
public final class H4: TypographyElementBase {
    ///Override tag element for element. Default is `h4`
    override var tag: String {
        get {
            return "h4"
        }
    }
}

// MARK: - H5
/**
   H5 tag element class

    ### Usage Example: ###
    ````
     H5("Heading H5")
    ````
*/
public final class H5: TypographyElementBase {
    ///Override tag element for element. Default is `h5`
    override var tag: String {
        get {
            return "h5"
        }
    }
}

// MARK: - H6
/**
   H6 tag element class

    ### Usage Example: ###
    ````
     H6("Heading H6")
    ````
*/
public final class H6: TypographyElementBase {
    ///Override tag element for element. Default is `h6`
    override var tag: String {
        get {
            return "h6"
        }
    }
}

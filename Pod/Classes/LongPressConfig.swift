// Copyright (c) RxSwiftCommunity

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import CoreGraphics

public struct LongPressConfig {

    public enum State: Int {
        case began = 1, changed = 2, ended = 3, any
    }

    #if os(iOS)
    public let location: CGPoint
    #elseif os(OSX)
    public let location: NSPoint
    #endif

    public let state: State
    public var recognizer: AnyObject?

    public static let began: LongPressConfig = {
        return LongPressConfig(location: .zero, state: .began, recognizer: nil)
    }()

    public static let changed: LongPressConfig = {
        return LongPressConfig(location: .zero, state: .changed, recognizer: nil)
    }()

    public static let ended: LongPressConfig = {
        return LongPressConfig(location: .zero, state: .ended, recognizer: nil)
    }()

    public static let any: LongPressConfig = {
        return LongPressConfig(location: .zero, state: .any, recognizer: nil)
    }()

}

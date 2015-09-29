//
//  LotameError.swift
//
// Created by Dan Rusk
// The MIT License (MIT)
//
// Copyright (c) 2015 Lotame
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

import Foundation
public let LotameErrorDomain = "com.splender.error"

public enum LotameError:ErrorType{
    case TrackingDisabled
    case InitializeNotCalled
    case UnexpectedResponse
    
    func getMessage() -> String{
        switch self{
        case .TrackingDisabled:
            return "User has chosen to limit ad tracking"
        case .InitializeNotCalled:
            return "Call the initialize method to set your client id before attempting network calls. This only needs to be done once per app run (can put in appdelegate)"
        case .UnexpectedResponse:
            return "Server is returning bad responses"
        }
    }
}
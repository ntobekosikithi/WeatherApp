// MARK: - Mocks generated from file: WeatherApp/CurrentWeather/ViewController/CurrentWeatherView.swift
//
//  CurrentWeatherView.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/19.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Cuckoo
@testable import WeatherApp

import Foundation


 class MockCurrentWeatherView: CurrentWeatherView, Cuckoo.ProtocolMock {
    
     typealias MocksType = CurrentWeatherView
    
     typealias Stubbing = __StubbingProxy_CurrentWeatherView
     typealias Verification = __VerificationProxy_CurrentWeatherView

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: CurrentWeatherView?

     func enableDefaultImplementation(_ stub: CurrentWeatherView) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func showCurrentWeather(weather: weather)  {
        
    return cuckoo_manager.call("showCurrentWeather(weather: weather)",
            parameters: (weather),
            escapingParameters: (weather),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showCurrentWeather(weather: weather))
        
    }
    
    
    
     func showWeatherForecast(forecast: forecast)  {
        
    return cuckoo_manager.call("showWeatherForecast(forecast: forecast)",
            parameters: (forecast),
            escapingParameters: (forecast),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showWeatherForecast(forecast: forecast))
        
    }
    
    
    
     func showError(errorMessage: String)  {
        
    return cuckoo_manager.call("showError(errorMessage: String)",
            parameters: (errorMessage),
            escapingParameters: (errorMessage),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showError(errorMessage: errorMessage))
        
    }
    
    
    
     func showLoadingIndicator()  {
        
    return cuckoo_manager.call("showLoadingIndicator()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.showLoadingIndicator())
        
    }
    
    
    
     func hideLoadingIndicator()  {
        
    return cuckoo_manager.call("hideLoadingIndicator()",
            parameters: (),
            escapingParameters: (),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.hideLoadingIndicator())
        
    }
    
    
    
     func navigateToWeatherDetails(forecast: forecast)  {
        
    return cuckoo_manager.call("navigateToWeatherDetails(forecast: forecast)",
            parameters: (forecast),
            escapingParameters: (forecast),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.navigateToWeatherDetails(forecast: forecast))
        
    }
    

	 struct __StubbingProxy_CurrentWeatherView: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func showCurrentWeather<M1: Cuckoo.Matchable>(weather: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(weather)> where M1.MatchedType == weather {
	        let matchers: [Cuckoo.ParameterMatcher<(weather)>] = [wrap(matchable: weather) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "showCurrentWeather(weather: weather)", parameterMatchers: matchers))
	    }
	    
	    func showWeatherForecast<M1: Cuckoo.Matchable>(forecast: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(forecast)> where M1.MatchedType == forecast {
	        let matchers: [Cuckoo.ParameterMatcher<(forecast)>] = [wrap(matchable: forecast) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "showWeatherForecast(forecast: forecast)", parameterMatchers: matchers))
	    }
	    
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "showError(errorMessage: String)", parameterMatchers: matchers))
	    }
	    
	    func showLoadingIndicator() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "showLoadingIndicator()", parameterMatchers: matchers))
	    }
	    
	    func hideLoadingIndicator() -> Cuckoo.ProtocolStubNoReturnFunction<()> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "hideLoadingIndicator()", parameterMatchers: matchers))
	    }
	    
	    func navigateToWeatherDetails<M1: Cuckoo.Matchable>(forecast: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(forecast)> where M1.MatchedType == forecast {
	        let matchers: [Cuckoo.ParameterMatcher<(forecast)>] = [wrap(matchable: forecast) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrentWeatherView.self, method: "navigateToWeatherDetails(forecast: forecast)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_CurrentWeatherView: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func showCurrentWeather<M1: Cuckoo.Matchable>(weather: M1) -> Cuckoo.__DoNotUse<(weather), Void> where M1.MatchedType == weather {
	        let matchers: [Cuckoo.ParameterMatcher<(weather)>] = [wrap(matchable: weather) { $0 }]
	        return cuckoo_manager.verify("showCurrentWeather(weather: weather)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showWeatherForecast<M1: Cuckoo.Matchable>(forecast: M1) -> Cuckoo.__DoNotUse<(forecast), Void> where M1.MatchedType == forecast {
	        let matchers: [Cuckoo.ParameterMatcher<(forecast)>] = [wrap(matchable: forecast) { $0 }]
	        return cuckoo_manager.verify("showWeatherForecast(forecast: forecast)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showError<M1: Cuckoo.Matchable>(errorMessage: M1) -> Cuckoo.__DoNotUse<(String), Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: errorMessage) { $0 }]
	        return cuckoo_manager.verify("showError(errorMessage: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func showLoadingIndicator() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("showLoadingIndicator()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func hideLoadingIndicator() -> Cuckoo.__DoNotUse<(), Void> {
	        let matchers: [Cuckoo.ParameterMatcher<Void>] = []
	        return cuckoo_manager.verify("hideLoadingIndicator()", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func navigateToWeatherDetails<M1: Cuckoo.Matchable>(forecast: M1) -> Cuckoo.__DoNotUse<(forecast), Void> where M1.MatchedType == forecast {
	        let matchers: [Cuckoo.ParameterMatcher<(forecast)>] = [wrap(matchable: forecast) { $0 }]
	        return cuckoo_manager.verify("navigateToWeatherDetails(forecast: forecast)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class CurrentWeatherViewStub: CurrentWeatherView {
    

    

    
     func showCurrentWeather(weather: weather)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showWeatherForecast(forecast: forecast)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showError(errorMessage: String)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func showLoadingIndicator()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func hideLoadingIndicator()   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func navigateToWeatherDetails(forecast: forecast)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


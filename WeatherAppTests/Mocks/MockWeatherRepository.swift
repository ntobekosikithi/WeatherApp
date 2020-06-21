// MARK: - Mocks generated from file: WeatherApp/Repository/WeatherRepository.swift at 2020-06-21 22:30:21 +0000

//
//  WeatherRepository.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Cuckoo
@testable import WeatherApp

import Foundation


 class MockWeatherRepository: WeatherRepository, Cuckoo.ProtocolMock {
    
     typealias MocksType = WeatherRepository
    
     typealias Stubbing = __StubbingProxy_WeatherRepository
     typealias Verification = __VerificationProxy_WeatherRepository

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: WeatherRepository?

     func enableDefaultImplementation(_ stub: WeatherRepository) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void)  {
        
    return cuckoo_manager.call("getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)",
            parameters: (cityName, completion),
            escapingParameters: (cityName, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getCurrentWeather(for: cityName, completion: completion))
        
    }
    
    
    
     func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void)  {
        
    return cuckoo_manager.call("getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)",
            parameters: (cityName, completion),
            escapingParameters: (cityName, completion),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.getWeatherForecast(for: cityName, completion: completion))
        
    }
    

	 struct __StubbingProxy_WeatherRepository: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<weather, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<weather, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<weather, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepository.self, method: "getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.ProtocolStubNoReturnFunction<(String, (Result<forecast, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<forecast, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<forecast, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepository.self, method: "getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherRepository: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<weather, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<weather, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<weather, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<forecast, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<forecast, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<forecast, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryStub: WeatherRepository {
    

    

    
     func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}



 class MockWeatherRepositoryImplementation: WeatherRepositoryImplementation, Cuckoo.ClassMock {
    
     typealias MocksType = WeatherRepositoryImplementation
    
     typealias Stubbing = __StubbingProxy_WeatherRepositoryImplementation
     typealias Verification = __VerificationProxy_WeatherRepositoryImplementation

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: WeatherRepositoryImplementation?

     func enableDefaultImplementation(_ stub: WeatherRepositoryImplementation) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void)  {
        
    return cuckoo_manager.call("getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)",
            parameters: (cityName, completion),
            escapingParameters: (cityName, completion),
            superclassCall:
                
                super.getCurrentWeather(for: cityName, completion: completion)
                ,
            defaultCall: __defaultImplStub!.getCurrentWeather(for: cityName, completion: completion))
        
    }
    
    
    
     override func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void)  {
        
    return cuckoo_manager.call("getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)",
            parameters: (cityName, completion),
            escapingParameters: (cityName, completion),
            superclassCall:
                
                super.getWeatherForecast(for: cityName, completion: completion)
                ,
            defaultCall: __defaultImplStub!.getWeatherForecast(for: cityName, completion: completion))
        
    }
    

	 struct __StubbingProxy_WeatherRepositoryImplementation: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (Result<weather, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<weather, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<weather, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepositoryImplementation.self, method: "getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.ClassStubNoReturnFunction<(String, (Result<forecast, Error>) -> Void)> where M1.MatchedType == String, M2.MatchedType == (Result<forecast, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<forecast, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockWeatherRepositoryImplementation.self, method: "getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_WeatherRepositoryImplementation: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func getCurrentWeather<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<weather, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<weather, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<weather, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getCurrentWeather(for: String, completion: @escaping (Result<weather, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getWeatherForecast<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(for cityName: M1, completion: M2) -> Cuckoo.__DoNotUse<(String, (Result<forecast, Error>) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == (Result<forecast, Error>) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, (Result<forecast, Error>) -> Void)>] = [wrap(matchable: cityName) { $0.0 }, wrap(matchable: completion) { $0.1 }]
	        return cuckoo_manager.verify("getWeatherForecast(for: String, completion: @escaping (Result<forecast, Error>) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class WeatherRepositoryImplementationStub: WeatherRepositoryImplementation {
    

    

    
     override func getCurrentWeather(for cityName: String, completion: @escaping (Result<weather, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getWeatherForecast(for cityName: String, completion: @escaping (Result<forecast, Error>) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


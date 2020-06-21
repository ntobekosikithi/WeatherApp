// MARK: - Mocks generated from file: WeatherApp/Networking/HttpServicing.swift
//
//  HttpServicing.swift
//  WeatherApp
//
//  Created by Ntobeko Sikithi on 2020/06/18.
//  Copyright © 2020 Ntobeko Sikithi. All rights reserved.
//

import Cuckoo
@testable import WeatherApp

import Foundation


 class MockHttpServicing: HttpServicing, Cuckoo.ProtocolMock {
    
     typealias MocksType = HttpServicing
    
     typealias Stubbing = __StubbingProxy_HttpServicing
     typealias Verification = __VerificationProxy_HttpServicing

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: false)

    
    private var __defaultImplStub: HttpServicing?

     func enableDefaultImplementation(_ stub: HttpServicing) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     func GET<T: Codable>(url: String, parameters: [String: Any], success: @escaping (T) -> Void, error: @escaping (NetworkingError) -> Void)  {
        
    return cuckoo_manager.call("GET(url: String, parameters: [String: Any], success: @escaping (T) -> Void, error: @escaping (NetworkingError) -> Void)",
            parameters: (url, parameters, success, error),
            escapingParameters: (url, parameters, success, error),
            superclassCall:
                
                Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                ,
            defaultCall: __defaultImplStub!.GET(url: url, parameters: parameters, success: success, error: error))
        
    }
    

	 struct __StubbingProxy_HttpServicing: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func GET<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable, T: Codable>(url: M1, parameters: M2, success: M3, error: M4) -> Cuckoo.ProtocolStubNoReturnFunction<(String, [String: Any], (T) -> Void, (NetworkingError) -> Void)> where M1.MatchedType == String, M2.MatchedType == [String: Any], M3.MatchedType == (T) -> Void, M4.MatchedType == (NetworkingError) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any], (T) -> Void, (NetworkingError) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameters) { $0.1 }, wrap(matchable: success) { $0.2 }, wrap(matchable: error) { $0.3 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockHttpServicing.self, method: "GET(url: String, parameters: [String: Any], success: @escaping (T) -> Void, error: @escaping (NetworkingError) -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_HttpServicing: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func GET<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable, M4: Cuckoo.Matchable, T: Codable>(url: M1, parameters: M2, success: M3, error: M4) -> Cuckoo.__DoNotUse<(String, [String: Any], (T) -> Void, (NetworkingError) -> Void), Void> where M1.MatchedType == String, M2.MatchedType == [String: Any], M3.MatchedType == (T) -> Void, M4.MatchedType == (NetworkingError) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, [String: Any], (T) -> Void, (NetworkingError) -> Void)>] = [wrap(matchable: url) { $0.0 }, wrap(matchable: parameters) { $0.1 }, wrap(matchable: success) { $0.2 }, wrap(matchable: error) { $0.3 }]
	        return cuckoo_manager.verify("GET(url: String, parameters: [String: Any], success: @escaping (T) -> Void, error: @escaping (NetworkingError) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class HttpServicingStub: HttpServicing {
    

    

    
     func GET<T: Codable>(url: String, parameters: [String: Any], success: @escaping (T) -> Void, error: @escaping (NetworkingError) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}


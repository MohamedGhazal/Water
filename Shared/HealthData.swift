//
//  HealthData.swift
//  Water
//
//  Created by Mohamed Ghazal on 2021-02-25.
//

import Foundation
import HealthKit
import HealthKitUI

struct HealthData{
    let healthStore = HKHealthStore()
    func body(){
        
        
        let allTypes = Set([
            HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKObjectType.quantityType(forIdentifier: .dietaryWater)!,
            HKObjectType.quantityType(forIdentifier: .bodyMass)!,
            HKObjectType.characteristicType(forIdentifier: .dateOfBirth)!,
            HKObjectType.characteristicType(forIdentifier: .biologicalSex)!
        ])
        let shareTypes = Set([
                                HKObjectType.quantityType(forIdentifier: .activeEnergyBurned)!,
                                HKObjectType.quantityType(forIdentifier: .dietaryWater)!,
                                HKObjectType.quantityType(forIdentifier: .bodyMass)!])

            
            healthStore.requestAuthorization(toShare: shareTypes, read: allTypes) { (success, error) in
                if !success {
                    // Handle the error here.
                    fatalError("Can't Access Health Data")
                }
            }
        }
    }

/*    func getAge() -> DateComponents? {
        var age: DateComponents?
        let today = Date()
   //     let today_formatted =
        do{
            try age = healthStore.dateOfBirthComponents()
        } catch {
            print("something happenes...\(error)")
            }
        return age
        }
    }

*/

    
 


//
//  ViewController.swift
//  iPhoneリリース
//
//  Created by 菊地英治 on 2022/05/30.
//

import UIKit
import Eureka
import ImageRow

class ViewController: FormViewController {

    var place : String = ""
    var weather : String = ""
    var averagewaterdepth = Int()
    var  maximumwaterdepth = Int()
    var  startpressure = Int()
    var  finishpressure = Int()
    var  transparency = Int()
    var  instructor : String = ""
    var  Buddy : String = ""
    var  member1 : String = ""
    var  member2 : String = ""
    var  member3 : String = ""
    var  member4 : String = ""
    var InstructorImage:UIImage? = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        form +++ Section("日時")
        
        <<< DateInlineRow(){ row in
            row.title = "日にち"
        }.onChange(){row in
            print(row.value!)
        }
        
        <<< TimeRow("") {
        $0.title = "開始時刻"
               //$0.value = date
        }.onChange() { row in
                   print(row.value!)
        }
        <<< TimeRow("") {
        $0.title = "終了時刻"
        }.onChange() { row in
                   print(row.value!)
        }
        
        <<< TimeInlineRow("") {
        $0.title = "潜水時刻？？？？？？？"
        }.onChange() { row in
                   print(row.value!)
        }
        

        <<< TextRow { row in
                row.title = "場所"
                row.placeholder = "場所"
                }.onChange{ row in
                self.place = row.value ?? "place"
                    print(self.place )
                }
        
        <<< PickerRow<String>() { row in
                      row.title = "天気"
                      row.options = ["晴れ","曇り","雨","雪","雷"]
                      row.value = row.options.first
                  }.onChange {[unowned self] row in
                      self.weather  = row.value!
                      print(self.weather )
                  }
        
        form +++ Section("水深")
        
        <<< IntRow(){ row in
               row.title = "平均"
               row.value = 0
               self.averagewaterdepth  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.averagewaterdepth  = row.value ?? 0
                   print(self.averagewaterdepth ,"m")
                
               })
        <<< IntRow(){ row in
               row.title = "最大"
               row.value = 0
               self.maximumwaterdepth  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.maximumwaterdepth  = row.value ?? 0
                   print(self.maximumwaterdepth ,"m")
               })
        
        form +++ Section("圧力")
        
        <<< IntRow(){ row in
               row.title = "開始"
               row.value = 0
               self.startpressure  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.startpressure  = row.value ?? 0
                   print(self.startpressure ,"m")
               })
        <<< IntRow(){ row in
               row.title = "終了"
               row.value = 0
               self.finishpressure  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.finishpressure  = row.value ?? 0
                   print(self.finishpressure ,"m")
               })
      
        form +++ Section("透明度")
        
        <<< IntRow(){ row in
               row.title = "開始"
               row.value = 0
               self.transparency  = row.value ?? 0
               }.onChange({ [unowned self] row in
               self.transparency  = row.value ?? 0
                   print(self.transparency,"m")
               })
        
        
        form +++ Section("メンバー")
        
        <<< TextRow { row in
                row.title = "インストラクター"
                row.placeholder = "インストラクター"
                }.onChange{ row in
                self.instructor = row.value ?? "instructor"
                    print(self.place )
                }
        <<< TextRow { row in
                row.title = "バディ"
                row.placeholder = "バディ"
                }.onChange{ row in
                self.Buddy = row.value ?? "バディ"
                    print(self.Buddy )
                }
        
        <<< TextRow { row in
                row.title = "メンバー１"
                row.placeholder = "メンバー１"
                }.onChange{ row in
                self.member1 = row.value ?? "member1 "
                    print(self.member1  )
                }
        
        <<< TextRow { row in
                row.title = "メンバー２"
                row.placeholder = "メンバー２"
                }.onChange{ row in
                self.member2 = row.value ?? "member2 "
                    print(self.member2  )
                }
        <<< TextRow { row in
                row.title = "メンバー2"
                row.placeholder = "メンバー2"
                }.onChange{ row in
                self.member2 = row.value ?? "member2 "
                    print(self.member2 )
                }
        <<< TextRow { row in
                row.title = "メンバー3"
                row.placeholder = "メンバー3"
                }.onChange{ row in
                self.member3 = row.value ?? "member3 "
                    print(self.member3  )
                }
        <<< TextRow { row in
                row.title = "メンバー4"
                row.placeholder = "メンバー4"
                }.onChange{ row in
                self.member4 = row.value ?? "member4 "
                    print(self.member4  )
                }
        
        
        form +++ Section("コメント")
            <<< ImageRow() {
                  $0.title = "インストラクター"
                  $0.sourceTypes = [.PhotoLibrary, .SavedPhotosAlbum, .Camera]
                  $0.clearAction = .yes(style: .destructive)
                  self.InstructorImage = nil
                  $0.onChange { [unowned self] row in
                      self.InstructorImage = row.value!
                  }
        
        
        
        
            }
        
   }
       
        
        
        // Do any additional setup after loading the view.
}

    
    
    


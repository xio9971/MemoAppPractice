# MemoAppPractice

+ __Placeholder__

  텍스트 입력할 수 있는 UITextView, UITextField를 사용하다보면, "제목을 입력해주세요", "내용을 입력해주세요" 등의 placeholder 값을 넣을 경우가 많습니다.
  기본적으로 UITextField에서는 placeholder 프로퍼티를 제공하지만, UITextView에서는 placeholder 제공하지 않지 않습니다.


  pod 'STTextView'
  
  placeholder가 구현된 프레임워크를 사용함
  
  
+ __iOS 11과 iOS 13의 Modal__

  viewWillAppear를 통해 메모 데이터를 reload 시킬려고 했으나  
  modal방식에 따라 ViewLifeCycle이 다름을 확인

  간력하게 요약하자면 
  firstView, secondView 가 존재할때
  
  sheet 방식  
  secondView 에서 dismiss시 firstView의 viewWillAppear 호출이 안된다

  fullScreen 방식</br>
  secondView 에서 dismiss시 firstView의 viewWillAppear 호출이 된다.

  iOS 11에서는 기본 modalPresentationStyle은 .fullScreen이다.
  
  
  참고 : <https://leefilll.github.io/2020-04-12/swift-modal-in-ios13>
  




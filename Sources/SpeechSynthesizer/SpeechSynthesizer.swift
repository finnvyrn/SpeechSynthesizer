import AVFAudio

@available(macOS 10.14, *)
public class SpeechSynthesizer: NSObject, AVSpeechSynthesizerDelegate {
  let synthesizer = AVSpeechSynthesizer()
  
  public static let shared = SpeechSynthesizer()

  public override init() {
    super.init()
    synthesizer.delegate = self
  }

  // Implement the delegate methods here
  public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didStart utterance: AVSpeechUtterance)
  {
    //print("Speech started")
  }

  public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didFinish utterance: AVSpeechUtterance)
  {
    //print("Speech finished")
  }

  public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didPause utterance: AVSpeechUtterance)
  {
    //print("Speech paused")
  }

  public func speechSynthesizer(
    _ synthesizer: AVSpeechSynthesizer, didContinue utterance: AVSpeechUtterance
  ) {
    //print("Speech continued")
  }

  public func speechSynthesizer(_ synthesizer: AVSpeechSynthesizer, didCancel utterance: AVSpeechUtterance)
  {
    //print("Speech cancelled")
  }

  public func speechSynthesizer(
    _ synthesizer: AVSpeechSynthesizer, willSpeakRangeOfSpeechString characterRange: NSRange,
    utterance: AVSpeechUtterance
  ) {
    //print("Will speak range:", characterRange)
  }
}

@available(macOS 10.14, *)
extension SpeechSynthesizer {
  public func speakText(_ text: String) {
    //print(AVSpeechSynthesisVoice.currentLanguageCode())
    print(AVSpeechSynthesisVoice.speechVoices())

    let utterance = AVSpeechUtterance(string: text)
    //utterance.rate = 0.57
    utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.ttsbundle.Ava-premium")

    #if os(iOS)
      utterance.voice = AVSpeechSynthesisVoice(identifier: "com.apple.voice.premium.en-US.Ava")
    #endif
    //print("Current voice: \(utterance.voice)")

    synthesizer.speak(utterance)
  }
}

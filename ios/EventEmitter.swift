@objc(EventEmitter)
open class EventEmitter: RCTEventEmitter {
  public static var emitter: RCTEventEmitter!
  override init() {
    super.init()
    EventEmitter.emitter = self;
  }

  @objc
  open override func supportedEvents() -> [String] {
    ["listenerCryptogramCard"]
  }
}

import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    self.standardWindowButton(.miniaturizeButton)?.isHidden = true // 隐藏最小化按钮
    self.standardWindowButton(.zoomButton)?.isHidden = true // 隐藏最大化按钮
    self.standardWindowButton(.closeButton)?.isHidden = true // 隐藏关闭按钮

    // 隐藏标题栏
    self.titlebarAppearsTransparent = true
    self.titleVisibility = .hidden

    // 完全隐藏标题栏
    self.styleMask = [.borderless, .fullSizeContentView]

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}

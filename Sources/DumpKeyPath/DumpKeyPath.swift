import CustomDump

@main
public struct DumpKeyPath {
  public private(set) var text = "Hello, World!"
  private let keyPath: WritableKeyPath<DumpKeyPath, String> = \.text
  
  public static func main() {
    let testObject = DumpKeyPath()
    dump(testObject.keyPath)
    print()
    print("===============")
    print()
    customDump(testObject.keyPath)
  }
}

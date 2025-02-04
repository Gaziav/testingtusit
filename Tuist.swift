import ProjectDescription
import Foundation
// testing remote cache

private func isCi() -> String? {
	guard let isCIEnv = ProcessInfo.processInfo.environment["ORGANIZATION_NAME"] else { fatalError() }
	return isCIEnv
}

let tuist = Tuist(fullHandle: isCi())

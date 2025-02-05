@preconcurrency import ProjectDescription
// testing remote cache


private func organizationName() -> String? {
	if case let .string(fullHandle) = Environment.organizationName {
		return fullHandle
	} else {
		return nil
	}
}


let tuist = Tuist(fullHandle: organizationName())

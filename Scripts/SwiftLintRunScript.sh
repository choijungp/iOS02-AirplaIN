if test -d "/opt/homebrew/bin/"; then
	PATH="/opt/homebrew/bin/:${PATH}"
fi

export PATH

YML="$(dirname "$0")/.swiftlint.yml"

if which swiftlint > /dev/null; then
	swiftlint --config ${YML}
else
	echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi


export PATH="$PATH:/opt/homebrew/bin"
if which swiftlint > /dev/null; then
  swiftlint lint "${SRCROOT}/IssueTracker" --config "${SRCROOT}/.swiftlint.yml"
  echo "ok"
else
  echo "warning: SwiftLint not installed, download from https://github.com/realm/SwiftLint"
fi

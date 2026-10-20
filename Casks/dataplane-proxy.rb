cask "dataplane-proxy" do
  version "0.0.20261020.2"
  sha256 "396108784686534fff99089c89b88267023e2457bc364db9bea65c62dbddfa40"

  url "https://github.com/dio/envoy-builder/releases/download/dataplane-proxy-4df1998da2ae-dcdbfe165202-darwin-arm64/dataplane-proxy-4df1998da2ae-dcdbfe165202-darwin-arm64.tar.gz"
  name "Dataplane Proxy"
  desc "Owned Envoy and matching combined LLM/MCP extension bundle"
  homepage "https://github.com/dio/envoy-builder"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  binary "envoy", target: "dataplane-envoy"
  artifact "libproxy_bundle.so", target: "#{HOMEBREW_PREFIX}/lib/dataplane-proxy/libproxy_bundle.so"
  artifact "provenance.json", target: "#{HOMEBREW_PREFIX}/share/dataplane-proxy/provenance.json"
  artifact "LICENSE.envoy", target: "#{HOMEBREW_PREFIX}/share/dataplane-proxy/LICENSE.envoy"
  artifact "NOTICE.envoy", target: "#{HOMEBREW_PREFIX}/share/dataplane-proxy/NOTICE.envoy"
  artifact "LICENSE.dataplane", target: "#{HOMEBREW_PREFIX}/share/dataplane-proxy/LICENSE.dataplane"

  caveats <<~EOS
    Set ENVOY_DYNAMIC_MODULES_SEARCH_PATH=#{HOMEBREW_PREFIX}/lib/dataplane-proxy
    and run dataplane-envoy with a Dataplane-generated configuration.
    This binary pair does not include the runtime/management launcher or dp CLI.
    No gateway starts on install. Built for macOS 13; tested on macOS 26.5.1.
  EOS
end

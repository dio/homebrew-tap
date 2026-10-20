class DataplaneProxy < Formula
  desc "Binary-only Dataplane Envoy with the combined LLM and MCP extension bundle"
  homepage "https://github.com/dio/envoy-builder"
  url "https://github.com/dio/envoy-builder/releases/download/dataplane-proxy-d1189a62fd1e-44e383201d9e-darwin-arm64/dataplane-proxy-d1189a62fd1e-44e383201d9e-darwin-arm64.tar.gz"
  version "0.0.20261020.1"
  sha256 "907a22ea0490fc502ee0567940609025ccf75dad69df70c1dd5096ed1db1d85c"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    bin.install "envoy" => "dataplane-envoy"
    libexec.install "libproxy_bundle.so", "provenance.json"
    pkgshare.install "LICENSE.envoy", "NOTICE.envoy", "LICENSE.dataplane"
  end

  def caveats
    <<~EOS
      Experimental macOS arm64 binary pair; no compilation is required.
      Envoy: #{bin}/dataplane-envoy
      Bundle: #{libexec}/libproxy_bundle.so
      Set ENVOY_DYNAMIC_MODULES_SEARCH_PATH=#{libexec} when launching Envoy.
      Supply a Dataplane-generated Envoy configuration; no gateway starts on install.
      The Dataplane runtime/management launcher is not included.
      Built for macOS 13; runtime qualified on macOS 26.5.1.
    EOS
  end

  test do
    assert_match "0eda42d56fb8", shell_output("#{bin}/dataplane-envoy --version")
    assert_path_exists libexec/"libproxy_bundle.so"
    assert_equal "feb7a249a1efcc92434fa6e229d4d3d87045b2d076a3dfbb91be569c3edfa3f1",
                 Digest::SHA256.file(libexec/"libproxy_bundle.so").hexdigest
  end
end

project_name: "simple_extension"

application: simple_extension {
  label: "Simple Extension"
  url: "https://hosted-guided-g-membrane.trycloudflare.com/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["me"]
  }
}

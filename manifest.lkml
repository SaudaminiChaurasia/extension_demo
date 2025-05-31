project_name: "extension_demo"

application: simple_extension {
  label: "Simple Extension"
  url: "https://inform-founded-broadcast-spa.trycloudflare.com/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["me"]
  }
}

project_name: "extension_demo"


application: simple_extension {
  label: "Extension"
  url: "https://muze-head-services-qatar.trycloudflare.com/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["me"]
  }
}

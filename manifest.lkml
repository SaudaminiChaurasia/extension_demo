project_name: "simple_extension"

application: simple_extension {
  label: "Simple Extension"
  url: "https://8355261025cad0f6c8ec01e79b7c73e6.serveo.net/bundle.js"
  # file: "bundle.js"
  entitlements: {
    core_api_methods: ["me", "run_inline_query"]
    navigation: yes
    use_embeds: yes
    use_iframes: yes
    new_window: yes
    new_window_external_urls: []
    local_storage: yes
    external_api_urls: []
  }
  mount_points: {
    dashboard_vis: no
    dashboard_tile: yes
    standalone: yes
  }
}

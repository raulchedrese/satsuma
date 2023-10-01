defmodule StorybookWeb.Storybook do
  use PhoenixStorybook,
    otp_app: :storybook_web,
    content_path: Path.expand("../../storybook", __DIR__),
    # assets path are remote path, not local file-system paths
    title: "Satsuma Components",
    css_path: "/assets/storybook.css",
    js_path: "/assets/storybook.js",
    sandbox_class: "storybook-web"
end

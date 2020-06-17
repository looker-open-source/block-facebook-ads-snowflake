project_name: "block-facebook-ads-snowflake"

# Library of common ad metrics definitions and date periods

remote_dependency: app-marketing-common {
  url: "git://github.com/looker/app-marketing-common-snowflake"
  ref: "e85634bcf7d66e2978a52371360903a91b3fef89"
}

# LookML to map the ETL and data warehouse for Google Ads
remote_dependency: app-marketing-facebook-ads-adapter {
  url: "git://github.com/looker/app-marketing-facebook-ads-fivetran-snowflake"
  ref: "5fbffe5183989b5bef87eeb71f84f55fced26f7d"
}

remote_dependency: app-marketing-facebook-ads {
  url: "git://github.com/looker/app-marketing-facebook-ads"
  ref: "d58f5826a28b474a6cadea721ffa29542606fd17"
}

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"
  override_constant: FACEBOOK_SCHEMA {
    value: "@{FACEBOOK_SCHEMA}"
  }
}

constant: CONFIG_PROJECT_NAME {
  value: "block-facebook-ads-config"
  export: override_required
}

constant: CONNECTION_NAME {
  value: "snowflake-apps"
  export: override_required
}

constant: FACEBOOK_SCHEMA {
  value: "FACEBOOK"
  export: override_required
}

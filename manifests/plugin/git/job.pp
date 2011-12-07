define configurer::plugin::git::job ($repo, $branch) {
  array_for_job = [
                    { project => [
                      { git => [
                        { repo => $repo },
                        { branch => $branch }
                      ]}
                    ]}
                  ]
}

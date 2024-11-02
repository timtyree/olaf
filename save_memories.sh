jq '.conversation += [ $(printf '%s\n' {history} | jq '.[] | {user: .[], ollama: "Olaf: "}') ) ]' memories.json > temp && mv temp memories.json

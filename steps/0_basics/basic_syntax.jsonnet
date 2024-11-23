// create local variables, remember the semicolon
local env = 'dev';

local tags = {
    version: "0.1.5",
    maintainer: null,  # trailing commas are required
};

{
    team: "Infra",
    environment: env,
    replicas: if env == "prod" then 5 else 1,
    tags: tags,
}

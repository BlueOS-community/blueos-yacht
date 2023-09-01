FROM selfhostedpro/yacht:nightly-2023-01-19--20

USER root

COPY register_service /app/register_service

ENV DISABLE_AUTH="true"
LABEL version="1.0.0"
LABEL permissions='{\
  "ExposedPorts": {\
    "8000/tcp": {}\
  },\
  "HostConfig": {\
    "Privileged": true,\
    "Binds": [\
      "/var/run/docker.sock:/var/run/docker.sock:rw"\
    ],\
    "PortBindings": {\
      "8000/tcp": [\
        {\
          "HostPort": ""\
        }\
      ]\
    }\
  }\
}'
LABEL authors='[\
    {\
        "name": "Patrick José Pereira",\
        "email": "patrickelectric@gmail.com"\
    }\
]'
LABEL company='{\
    "about": "",\
    "name": "Blue Robotics",\
    "email": "support@bluerobotics.com"\
}'
LABEL readme="https://raw.githubusercontent.com/patrickelectric/blueos-yacht/master/README.md"
LABEL type="tool"
LABEL tags='[\
  "docker",\
  "container",\
  "dashboard",\
  "manager"\
]'
---
layout: talk
speaker_name:  "Eric Bowman"
image_url: "https://pbs.twimg.com/profile_images/1735046674/headshot_400x400.png"
github: "https://github.com/ebowman"
twitter: "ebowman"
title:  "Docker all the things - how Gilt is using Docker to improve developer happiness and site reliability"
biography:
    Scala programmer and pointy haired boss. VP Architecture.
  
from: "16:55"
---

Gilt Groupe is the largest US flash sales site, and every day invites every one of its millions of members to visit the site at exactly the same time. Madness. Making this work requires a flexible development and deployment architecture, so we've built a system that creates what we're calling "pods" - hierarchical environments containing a subset of our microservices in Docker containers, that fill in the gaps in the stack by delegating to their parent. Docker allows us to use the same build artefacts and tooling on developer laptops, shared staging, integration, preproduction, and even eventually to provide elasticity by bringing up an entire datacenter on demand.

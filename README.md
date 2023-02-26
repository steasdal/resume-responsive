# Sam Teasdale's Responsive Resume
Hey, you've found my resume repo!  Welcome, friend, and allow me to regale you with the tale of how this responsive resume came to be.

-----

Way, way back in the day, I used to throw together a resume in Microsoft Word just like most folks.  If I were feeling particularly sassy, 
I might even save it off as a PDF before sending it out.  One day, when it came time to update the ol' curriculum vitae, I figured that 
it was probably time to come up with a better way.  These modern times call for modern solutions, right?  Perhaps I could come up with 
something that puts to use a few of the skills that I've acquired over the years.  Let's see what we've got here.

The resume itself is pretty simple.  I found a responsive resume template online, copied it, and modified it to suit my needs.
It's just a bit of html and responsive CSS.  Nothing too flashy.  You'll find it all in the 
[/content](https://github.com/steasdal/resume-responsive/tree/master/content) directory.

The resume is served up by a super simple Python web server.  See the **CMD** section 
of the [Dockerfile](https://github.com/steasdal/resume-responsive/blob/master/Dockerfile).

I'm a Docker guy so, of course, everything is dockerized.  Have a look at the
[Dockerfile](https://github.com/steasdal/resume-responsive/blob/master/Dockerfile) for the dirty Docker details.

I've got a CI/CD pipeline setup using [GitHub Actions](https://github.com/features/actions).  Commits to the _develop_
branch or creation of a tagged release will kick off the pipeline which'll do the following:

   * Check out this repo and another private **gitops** repo
   * Authenticate against the [ghcr](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry) docker registery
   * Get the git sha or release tag
   * Update the version placeholder in the [index.html](./content/index.html) file.
   * Build, tag, and push the docker image to the **ghcr** docker repo
   * Update a deploy.yaml file in the **gitops** repo (this is a Kubernetes deployment manifest)
   * Commit changes to the **gitops** repo

Once all that is done, we've got a fresh (and freshly tagged) docker image and we've updated some deploy
files in some private **gitops** repo.  The GitHub Actions files that drive this pipeline process can be found in the 
[.github/workflows](https://github.com/steasdal/resume-responsive/tree/develop/.github/workflows) directory.

What happens next?  Well, you see, I've got a Kubernetes cluster running on some Ubuntu VM's in [Proxmox](https://www.proxmox.com/en/) in my homelab.  On that cluster, I've got [ArgoCD](https://argoproj.github.io/argo-cd/) watching for changes
to the afore mentioned **gitops** repo.  When ArgoCD sees that a new version of the docker container is available,
it just automatically deploys it.  Boom.  Just like that.  I've even got a GitHub Webhook setup to let ArgoCD know
that there are new changes it needs to know about.  Pretty sweet, right?  That's... well, that's about it.  That's 
the whole thing, really.

-----

Thanks for stopping by and taking a peek at my resume repo.  I hope you enjoyed perusing at it as much as I enjoyed getting it
up and running.  Please feel free to message me if you've got any feedback or suggestions.  Cheers!

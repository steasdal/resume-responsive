# Sam Teasdale's Resume
It's time to whip up a resume.  What am I gonna' do, write it in Word?  Oh, come now, let's be rational.  I've got a 
Kubernetes cluster running on some old hardware in the garage.  I've got some Node.js chops.  While I wouldn't consider 
myself a front-end guy, I've spent some time in Angular 2 and at least know what a responsive design looks like.  I bet
I could find a responsive HTML resume template and go to town on it.  Let's see what's out there...

Well bless my stars!  It turns out that there's a _buttload_ of HTML resume templates out there!  Find a good looking
example, fill in the deets, throw in a sexy headshot.  The [/content](https://github.com/steasdal/resume-responsive/tree/master/content) 
directory is where it's at.
  
Now that the template is looking good, let's whip up a little Node.js static web server.
See the [app.js](https://github.com/steasdal/resume-responsive/blob/master/app.js) file.

I'm a Docker guy so let's conjure up a [Dockerfile](https://github.com/steasdal/resume-responsive/blob/master/Dockerfile) 
and wrap everything in a Docker image for portability and easy deployment.  Since this is a public GitHub repo,
we can even setup an automated build on the official Docker Hub and host the 
[resulting Docker image](https://hub.docker.com/r/steasdal/resume-responsive/) out there.  Nice!

We've got a resume wrapped snugly in a Docker image.  We've got a [Kubernetes Cluster](https://goo.gl/photos/SKRTMvPVZrns4YzW9)
running in the garage.  All we need now is a K8s deployment, service and ingress and we've got a responsive resume out 
on the frickin' world wide web!  Check out [deploy.yaml](https://github.com/steasdal/resume-responsive/blob/master/deploy.yaml) for
the naughty details.

Run the deployment and **[BOOM!](http://resume.teasdale.link)**  There it is!



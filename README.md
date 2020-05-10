# Sam Teasdale's Responsive Resume
Hey, you've found my resume repo!  Welcome, friend, and allow me to regale you with the tale of how this responsive resume came to be.

-----

Way, way back in the day, I used to throw together a resume in Microsoft Word just like most folks.  If I were feeling particularly sassy, 
I might even save it off as a PDF before sending it out.  When it came time to update the ol' resume, I figured that it was probably time
to come up with a better way.  These modern times call for modern solutions, right?  Perhaps I could come up with something that puts to
use a few of the skills that I've acquired over the years.  Let's take a quick inventory:


   * I've got a lil' Kubernetes cluster [sitting right here beside me](https://photos.app.goo.gl/SjD2nX6jQKtTpDpEA)
   * I've got a wee bit of Node.js experience.
   * I've got some time to throw together something interesting.
   
While I wouldn't exactly consider myself a front-end guy, I've spent some time with Angular 2 and at least know what a responsive 
design looks like.  I bet I could find a responsive HTML resume template and go to town on it.  Let's see what's out there...

Hey, look at that!  It turns out there's a _buttload_ of HTML resume templates out there!  Let's find a good looking example, 
fill in the deets, throw in a  headshot, adjust a few pertinent bits and pieces.  The [/content](https://github.com/steasdal/resume-responsive/tree/master/content) 
directory is where you'll find the files that make up the resume itself.
  
Now that the template is looking good, let's whip up a little Node.js static web server. 
See the [app.js](https://github.com/steasdal/resume-responsive/blob/master/app.js) file.

I'm a Docker guy so let's conjure up a [Dockerfile](https://github.com/steasdal/resume-responsive/blob/master/Dockerfile) and wrap everything 
in a Docker image for portability and easy deployment.  Since this is a public GitHub repo, we can even setup an automated build 
on the official Docker Hub and host the [resulting Docker image](https://hub.docker.com/r/steasdal/resume-responsive/) out there.  Nice!

At this point, we've got a resume wrapped all warm 'n snugly in a Docker image.  We've got a Kubernetes Cluster that we can
deploy it to.  All we need now is a Kubernetes deployment, service, and ingress and we should be in business.  
Check out [deploy.yaml](https://github.com/steasdal/resume-responsive/blob/master/deploy.yaml) to see what's up with that.

All I've gotta' do now is run the deployment and **BOOM!**  [There it is!](https://resume.teasdale.link)

-----

Say, that wasn't hard at all.  It _might_ have even been a little bit of fun.  Thanks for stopping by and taking a peek at my resume.  
Please feel free to message me if you've got any feedback or suggestions.  Ciao!

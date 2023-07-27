
# Securing Your Infra: Exploring Nuclei’s Defense Arsenal

Hello Folks I came up with a New Project in Devsecops. This Project is Inspired by this ProjectDiscovery blog — https://blog.projectdiscovery.io/implementing-nuclei-into-your-github-ci-cd-for-scanning-live-web-applications/

   I tried this above Project from projectdiscovery In Our Github CI/CD and Noticed Some Limitations.

      1. workflows taking to much time to complete beacause of nuclei.

      2. Not able to Scan Internal apps which are not hosted Publically { might be possible on self hosted runner}


**Our Main goal is to run Nuclei In Infrastructure to Dectect Vulnerabilities in early development and in Internal Apps.**

Now Days Everyone Switching to Kubernestes and Microservices. So we are

**How Blue Team Can use this?**

```javascript
In K8s Microservices has service endpoints like this http://api-backend.default.svc.cluster.local:9000 
collect all these service endpoints in file called urls.txt and give this file as a input to nuclei. 
Now how nuclei will access this urls? -> deploy nuclei in K8s cluster as Cronjob and trigger the job after Push commit in master branch
```









## Documentation

[Detailed blog post](https://infosecwriteups.com/securing-your-infra-exploring-nucleis-defense-arsenal-783c193a84c1)


## Feedback

If you have any feedback, please reach out to me at magarajay538@gmail.com


# UCB ELK Stack Project

The files within this repository were used to configure the network below: 

![Image of Topology](https://github.com/mitsu0921/UCB-ELK-Stack-Project/blob/main/Diagrams/ELK%20Stack%20Topology.png?raw=true)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployement pictured above. Alternatively, select portions of the YAML file may be used to install certain pieces of it, such as Filebeat. 

This document conatains the following details:
* Descriptioin of the Topology 
* Access Policies
* ELK Configuration
  - Beats in use
  - Machines Being Monitored
* How to Use the Ansible Build

# Description of the Topology 

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application. 

Load balancing ensures that the application will be highly efficient, in addition to restricting traffic to the network.

What aspect of security do load balancers protect? 

* A load balancer intelligently distributes traffic from clients accross multiple servers without the clients having to understand how many servers are in use or how they are configured. The load balancer sites between the clients and the server to enhance the user experience by providing additional security, performance, and resilience and simplify scaling your website. 

 What is the advantage of a jump box?
  
* A jump box is a secure computer that all admins first connect to before launching any administrative task or use as an orgigination point to connect to other servers or untrusted environments. 

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the Logs and system traffic. 

* What does Filebeat watch for?
  - Filebeat watches for any information in the file system which has been changed and when the changes occurred.
  - Filebeat watches for log files/locations and collects log events. 

* What does Metricbeat record?
  - Metricbeat takes the metrics and statics that collect and ships them to the output you specify. 
  - Metricbeat records metric and statistical data from the operating system and from services running on the server. 

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.5   | Linux            |
| Web-1     | Webserver |   10.0.0.6   |    Linux        |
| Web-2     | Webserver |   10.0.0.7   |  Linux         |
| ELK-Server | Webserver |   10.1.0.5   |     Linux        |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
* 5601 Kibana Port 

Machines within the network can only be accessed by jump box provisioner.
* My IP Address: 99.189.113.188

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes              | 99.189.113.188    |
| Web-1  |     no         |           10.1.0.5           |
|  Web-2    |       no       |       10.1.0.5      |
|  ELK-Server    |        no       |       10.1.0.5        |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
What is the main advantage of automating configuration with Ansible?
  -Ansible allows you to deploy to multiple servers using a single playbook. 

The playbook implements the following tasks:
- Install docker.io
- Install Python-pip
- Install docker container
- Launch docker container: elk
- Command: sysctl -w vm.max_map_count=262144

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- _TODO: List the IP addresses of the machines you are monitoring_

We have installed the following Beats on these machines:
- _TODO: Specify which Beats you successfully installed_

These Beats allow us to collect the following information from each machine:
- _TODO: In 1-2 sentences, explain what kind of data each beat collects, and provide 1 example of what you expect to see. E.g., `Winlogbeat` collects Windows logs, which we use to track user logon events, etc._

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it?_
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on?_
- _Which URL do you navigate to in order to check that the ELK server is running?

_As a **Bonus**, provide the specific commands the user will need to run to download the playbook, update the files, etc._
 

# Windows Services Tasks
A toolbox of tasks to manage windows services.

### Details

With these tasks you will have a toolbox to manage the windows services on the target machine.
In Windows NT operating systems, a Windows service is a computer program that operates 
in the background. It is similar in concept to a Unix daemon. A Windows service must conform to the interface rules and protocols
of the Service Control Manager, the component responsible for managing Windows services.

Windows services can be configured to start when the operating system is started and run in the background as long as Windows is running.
Alternatively, they can be started manually or by an event. Windows NT operating systems include numerous services which run in context of three 
user accounts: System, Network Service and Local Service. These Windows components are often associated with Host Process for Windows Services. 
Because Windows services operate in the context of their own dedicated user accounts, they can operate when a user is not logged on.

### Start Windows Service
Starts the windows service.
### Options
- **Service Name:** Name of the Windows Service (this is not always the display name).

### Stop Windows Service

### Options
- **Service Name:** Name of the Windows Service (this is not always the display name).

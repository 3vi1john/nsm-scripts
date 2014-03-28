nsm-scripts
===========

Various scripts for my nsm setups

The scripts are to help monitor snort, bro, barnyard2, and snorby. 
The pf_ring scripts are for a quad core daq_pfring setup. The normal
scripts are for a single process snort/barnyard2.

Add the monitor scripts to crontab to make sure the daemons stay running.

*/10 * * * *    root    /etc/snorby-mon.sh

*/10 * * * *    root    /etc/nsm-mon.sh


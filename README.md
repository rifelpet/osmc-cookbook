# osmc-cookbook
A Chef cookbook to get my rpi2 setup with osmc, USB DAC, etc.

### Bootstrapping a Raspberry Pi
The "Omnitruck" method for bootstrapping a node does not work because Chef does not support ARM processors, so a custom bootstrap template is required.
* Copy `bootstrap/raspberry-pi.erb` into the bootstrap directory within your chef configuration (either `.chef/bootstrap/` `~/.chef/bootstrap/` or `/etc/chef/bootstrap/`)
* specify the template in your bootstrap command with `-t raspberry-pi`. See [here](https://docs.chef.io/knife_bootstrap.html) for more details.
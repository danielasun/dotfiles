#!/usr/bin/python3

"""
Profile configuration managment for systems.

Read from a profile depending on the hostname and write a configuration file.
"""

import yaml
import argparse
import socket
import os

# Path to the YAML file you want to parse
PROFILE_FILE_PATH = "profiles.yaml"
OUTPUT_CONFIG_FILE_PATH = "config.yaml"
OUTPUT_CONFIG_FILE_PATH_DEFAULT = "config.yaml"


def create_settings_from_hostname(profile_file_path, hostname, DEBUG=False):

    # Open and read the YAML file
    with open(profile_file_path, 'r') as file:
        yaml_data = yaml.load(file, Loader=yaml.FullLoader)

    # Access and print data from the parsed YAML
    if DEBUG:
        print("Parsed YAML data:")
        print(yaml_data)

    if DEBUG:
        print("Edited YAML data:")
        print(yaml_data)


    # Specify the path to the YAML file you want to create or write to
    output_config_file_path = OUTPUT_CONFIG_FILE_PATH_DEFAULT

    # Write the data to the YAML file
    with open(output_config_file_path, 'w') as file:
        yaml.dump(yaml_data, file)

    print(f"Data has been written to {output_config_file_path}")

def read_config(keys, config_file_path, hostname=None, DEBUG=False)-> dict:
    # Read config and return data from key-value pairs. If no keys are given, return all key-value pairs

    if hostname is None:
        hostname = socket.gethostname()
    if DEBUG:
        print(f"hostname is {socket.gethostname()}")

    with open(config_file_path, 'r') as file:
        yaml_data = yaml.load(file, Loader=yaml.FullLoader)[hostname]
        
        if DEBUG:
            print(yaml_data)

        # print keys, transitioning all to uppercase. If there aren't any keys provided, print them all
        if len(keys) == 0:
            keys=yaml_data.keys()
        for k in keys:
            out=f"{k.upper()}={yaml_data[k]}"
            print(out)
        

if __name__ == "__main__":
    # Create an ArgumentParser object
    parser = argparse.ArgumentParser(description="A simple command-line tool")

    # Create subparsers for different commands
    subparsers = parser.add_subparsers(title="Available Commands", dest="command")

    # gen command
    gen_command = subparsers.add_parser("gen", help="generate config file based on hostname")
    gen_command.add_argument("--profile_location", 
                                default=PROFILE_FILE_PATH,
                                help="Argument for command1")
    
    gen_command.add_argument("--hostname", 
                                default=socket.gethostname(),
                                help="hostname to use for matching profile. Defaults to socket.gethostname()"
                                )
    
    gen_command.add_argument("--debug", "-d",
                                action="store_true",
                                help="Toggle printing debug messages",
                                )

    # read command
    read_command = subparsers.add_parser("read", help="read config file based on hostname")
    read_command.add_argument("keys", nargs='*', type=str,
                              help="keys to read")
    read_command.add_argument("--config",
                                default=OUTPUT_CONFIG_FILE_PATH_DEFAULT,
                                help="Argument for command1")
    read_command.add_argument("--hostname", 
                                default=socket.gethostname(),
                                help="hostname to use for matching profile. Defaults to socket.gethostname()"
                                )
    read_command.add_argument("--debug", "-d",
                                action="store_true",
                                help="Toggle printing debug messages",
                                )

    # test command
    test_command = subparsers.add_parser("test", help="run unit tests")

    args = parser.parse_args()
    if args.command == "gen":
        create_settings_from_hostname(args.profile_location, args.hostname, args.debug)
    elif args.command == "read":
        read_config(args.keys, args.config, args.hostname,  args.debug)








import yaml
import argparse
import socket

# Path to the YAML file you want to parse
PROFILE_FILE_PATH = "profiles.yaml"
OUTPUT_CONFIG_FILE_PATH = "config.yaml"

def create_settings_from_hostname(profile_file_path, hostname, DEBUG=False):

    # Open and read the YAML file
    with open(profile_file_path, 'r') as file:
        yaml_data = yaml.load(file, Loader=yaml.FullLoader)

    # Access and print data from the parsed YAML
    if DEBUG:
        print("Parsed YAML data:")
        print(yaml_data)

    yaml_data[hostname]['import_ow'] = False

    if DEBUG:
        print("Edited YAML data:")
        print(yaml_data)


    # Specify the path to the YAML file you want to create or write to
    yaml_file_path = "config.yaml"

    # Write the data to the YAML file
    with open(yaml_file_path, 'w') as file:
        yaml.dump(yaml_data, file)

    print(f"Data has been written to {yaml_file_path}")

if __name__ == "__main__":
    # Create an ArgumentParser object
    parser = argparse.ArgumentParser(description="A simple command-line tool")

    # Create subparsers for different commands
    subparsers = parser.add_subparsers(title="Available Commands", dest="command")

    # Subcommand 1: "command1"
    parser_command1 = subparsers.add_parser("gen", help="generate config file based on hostname")
    parser_command1.add_argument("--profile_location", 
                                 default=PROFILE_FILE_PATH,
                                 help="Argument for command1")
    
    parser_command1.add_argument("--hostname", 
                                 default=socket.gethostname(),
                                 help="hostname to use for matching profile. Defaults to socket.gethostname()"
                                 )
    
    parser_command1.add_argument("-d", "--debug",
                                 action="store_true",
                                 help="hostname to use for matching profile. Defaults to socket.gethostname()"
                                 )


    # Subcommand 2: "command2"
    parser_command2 = subparsers.add_parser("test", help="run unit tests")

    args = parser.parse_args()
    if args.command == "gen":
        create_settings_from_hostname(args.profile_location, args.hostname, args.debug)
    
    # # Add positional argument
    # parser.add_argument("input_file", help="Path to the input file")

    # # Add optional arguments
    # parser.add_argument("-o", "--output", help="Path to the output file")

    # # Add an optional flag
    # parser.add_argument("-v", "--verbose", action="store_true", help="Enable verbose mode")

    # # Parse the command-line arguments
    # args = parser.parse_args()

    # # Access the values of the arguments
    # input_file = args.input_file
    # output_file = args.output
    # verbose = args.verbose

    # # Perform some action based on the arguments
    # print(f"Input file: {input_file}")
    # if output_file:
    #     print(f"Output file: {output_file}")
    # if verbose:
    #     print("Verbose mode is enabled")








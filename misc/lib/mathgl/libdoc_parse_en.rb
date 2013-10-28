# This document is converted from parse_en.texi.

# module MathGL
module MathGL

# MglParse class
class MglParse

# Main function in the class. Function parse and execute line-by-line MGL script in array text. Lines are separated by newline symbol '\n' as usual.
#
# @overload execute(gr,text)
#  @param [MglGraph] gr 
#  @param [String] text 
#  @return [nil]
def execute
end


# The same as previous but read script from the file fp. If print=true then all warnings and information will be printed in stdout.
#
# @overload execute(gr,fp,print=false)
#  @param [MglGraph] gr 
#  @param [FILE] fp 
#  @param [bool] print default=false
#  @return [nil]
def execute
end


# Function parses the string str and executes it by  using gr as a graphics plotter. Returns the value depending on an error presence in the string str: 0 -- no error, 1 -- wrong command argument(s), 2 -- unknown command, 3 -- string is too long. Optional argument pos allows to save the string position in the document (or file) for using for|next command.
#
# @overload parse(gr,str,pos=0)
#  @param [MglGraph] gr 
#  @param [String] str 
#  @param [long] pos default=0
#  @return [Integer]
def parse
end


# Function parses the string formula and return resulting data array. In difference to AddVar() or FindVar(), it is usual data array which should be deleted after usage.
#
# @overload calc(formula)
#  @param [String] formula 
#  @return [MglData]
def calc
end


# Function set the value of n-th parameter as string str (n=0, 1 ... 'z'-'a'+10). String str shouldn't contain '$' symbol.
#
# @overload add_param(n,str)
#  @param [Integer] n 
#  @param [String] str 
#  @return [nil]
def add_param
end


# Function returns the pointer to variable with name name or zero if variable is absent. Use this function to put external data array to the script or get the data from the script. You must not delete obtained data arrays!
#
# @overload find_var(name)
#  @param [String] name 
#  @return [MglVar]
def find_var
end


# Function returns the pointer to variable with name name. If variable is absent then new variable is created with name name. Use this function to put external data array to the script or get the data from the script. You must not delete obtained data arrays!
#
# @overload add_var(name)
#  @param [String] name 
#  @return [MglVar]
def add_var
end


# Function delete the variable specified by its name or by its pointer.
#
# @overload delete_var(name)
#  @param [String] name 
#  @return [nil]
def delete_var
end


# Function delete all variables in this parser.
#
# @overload delete_all()
#  @return [nil]
def delete_all
end


# Restore Once flag.
#
# @overload restore_once()
#  @return [nil]
def restore_once
end


# Allow to parse 'setsize' command or not.
#
# @overload allow_set_size(a)
#  @param [bool] a 
#  @return [nil]
def allow_set_size
end


# Allow reading/saving files or not.
#
# @overload allow_file_io(a)
#  @param [bool] a 
#  @return [nil]
def allow_file_io
end


# Sends stop signal which terminate execution at next command.
#
# @overload stop()
#  @return [nil]
def stop
end


# Return the number of registered MGL commands.
#
# @overload get_cmd_num()
#  @return [long]
def get_cmd_num
end


# Return the name of command with given id.
#
# @overload get_cmd_name(id)
#  @param [long] id 
#  @return [String]
def get_cmd_name
end


# Return the type of MGL command name. Type of commands are: 0 -- not the command, 1 - data plot, 2 - other plot, 3 - setup, 4 - data handle, 5 - data create, 6 - subplot, 7 - program, 8 - 1d plot, 9 - 2d plot, 10 - 3d plot, 11 - dd plot, 12 - vector plot, 13 - axis, 14 - primitives, 15 - axis setup, 16 - text/legend, 17 - data transform.
#
# @overload cmd_type(name)
#  @param [String] name 
#  @return [Integer]
def cmd_type
end


# Return the format of arguments for MGL command name.
#
# @overload cmd_format(name)
#  @param [String] name 
#  @return [String]
def cmd_format
end


# Return the description of MGL command name.
#
# @overload cmd_desc(name)
#  @param [String] name 
#  @return [String]
def cmd_desc
end


end # MglParse

end

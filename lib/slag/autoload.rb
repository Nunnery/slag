# Returns the expanded path to the specified file, auto-prepends source root
# @return [String] expanded path to file
# @private
def __p(path) File.join(Slag::ROOT, 'slag', *path.split('/')); end

module Slag

end
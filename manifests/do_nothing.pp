# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include spec_testing::do_nothing
class spec_testing::do_nothing {

  if $facts['non_existant_fact'] {
    notify { 'huh you were not supposed to exist': }
  }
}

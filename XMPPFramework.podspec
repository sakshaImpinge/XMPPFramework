Pod::Spec.new do |s|
  s.name = 'XMPPFramework'
  s.version = '3.7.0'

  s.osx.deployment_target = '10.9'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'

  s.license = { :type => 'BSD', :file => 'copying.txt' }
  s.summary = 'An XMPP Framework in Objective-C for the Mac / iOS development community.'
  s.homepage = 'https://github.com/robbiehanson/XMPPFramework'
  s.author = { 'Robbie Hanson' => 'robbiehanson@deusty.com' }
  s.source = { :git => 'https://github.com/robbiehanson/XMPPFramework.git', :tag => s.version }
  # s.source = { :git => 'https://github.com/robbiehanson/XMPPFramework.git', :branch => 'master' }
  s.resources = [ 'Extensions/**/*.{xcdatamodel,xcdatamodeld}']

  s.description = 'XMPPFramework provides a core implementation of RFC-3920 (the xmpp standard), along with
  the tools needed to read & write XML. It comes with multiple popular extensions (XEPs),
  all built atop a modular architecture, allowing you to plug-in any code needed for the job.
  Additionally the framework is massively parallel and thread-safe. Structured using GCD,
  this framework performs    well regardless of whether it\'s being run on an old iPhone, or
  on a 12-core Mac Pro. (And it won\'t block the main thread... at all).'

  s.requires_arc = true

  s.source_files = ['Core/**/*.{h,m}','Dependenices/**/*.{h,m,a}',
                    'Authentication/**/*.{h,m}', 'Categories/**/*.{h,m}',
                    'Utilities/**/*.{h,m}', 'Extensions/**/*.{h,m}']
  s.ios.exclude_files = 'Extensions/SystemInputActivityMonitor/**/*.{h,m}'
  s.libraries = 'xml2', 'resolv'
  s.frameworks = 'CoreData', 'SystemConfiguration', 'CoreLocation','libidn'
  s.vendored_libraries = 'libidn.a'
  s.ios.vendored_libraries = 'libidn.a'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-lidn' }
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2 $(SDKROOT)/usr/include/libresolv',
    'LIBRARY_SEARCH_PATHS' => '$(SRCROOT)/Pods/XMPPFramework/Dependenices/libidn',
  }
end












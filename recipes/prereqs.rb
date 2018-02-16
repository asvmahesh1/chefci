yum_package 'Java8' do
  package_name 'java-1.8.0-openjdk.x86_64'
  action :install
end

execute 'java8_alternative' do
  command '/usr/sbin/alternatives --set java /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/java'
  returns [0,2]
end

execute 'java8c_alternative' do
  command '/usr/sbin/alternatives --set javac /usr/lib/jvm/jre-1.8.0-openjdk.x86_64/bin/javac'
  returns [0,2]
end

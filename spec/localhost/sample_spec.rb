require 'spec_helper'

# Check if Node.js is installed
describe package('nodejs') do
  it { should be_installed }
  its('version') { should >= '16.19.1' }
end

# Check if npm is installed
describe command('npm -v') do
  its(:stdout) { should be >= '8.19.3' }
  its(:exit_status) { should eq 0 }
end

# Check if react is installed
describe command('npm ls react --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['react']['version']).to be >= '18.2.0'
  end
end

# Check if react-dom is installed
describe command('npm ls react-dom --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['react-dom']['version']).to be >= '18.2.0'
  end
end

# Check if react-router-dom is installed
describe command('npm ls react-router-dom --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['react-router-dom']['version']).to be >= '6.8.2'
  end
end

# Check if react-modal is installed
describe command('npm ls react-modal --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['react-modal']['version']).to be >= '3.16.1'
  end
end

# Check if react-redux is installed
describe command('npm ls react-redux --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['react-redux']['version']).to be >= '8.0.5'
  end
end

# Check if redux is installed
describe command('npm ls redux --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['redux']['version']).to be >= '4.2.1'
  end
end

# Check if redux-devtools-extension is installed
describe command('npm ls redux-devtools-extension --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['redux-devtools-extension']['version']).to be >= '2.13.9'
  end
end

# Check if redux-thunk is installed
describe command('npm ls redux-thunk --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['redux-thunk']['version']).to be >= '2.4.2'
  end
end

# Check if axios is installed
describe command('npm ls axios --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['axios']['version']).to be >= '1.3.4'
  end
end

# Check if prop-types is installed
describe command('npm ls prop-types --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['prop-types']['version']).to be >= '15.8.1'
  end
end

# Check if sass is installed
describe command('npm ls sass --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['sass']['version']).to be >= '1.58.3'
  end
end

# Check if web-vitals is installed
describe command('npm ls web-vitals --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['web-vitals']['version']).to be >= '2.1.4'
  end
end

# Check if prettier is installed
describe command('npm ls prettier --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['prettier']['version']).to be >= '2.8.7'
  end
end

# Check if gh-pages is installed
describe command('npm ls gh-pages --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['gh-pages']['version']).to be >= '2.1.1'
  end
end

# Check if typescript is installed
describe command('npm ls typescript --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['typescript']['version']).to be >= '5.0.2'
  end
end

# Check if tslint is installed
describe command('npm ls tslint --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['tslint']['version']).to be >= '6.1.3'
  end
end

# Check if tslint-config-prettier is installed
describe command('npm ls tslint-config-prettier --json') do
  let(:npm_list) { JSON.parse(subject.stdout) }

  it 'is installed and has the required version' do
    expect(npm_list['dependencies']['tslint-config-prettier']['version']).to be >= '1.18.0'
  end
end

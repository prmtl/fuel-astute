# -*- coding: utf-8 -*-

#    Copyright 2013 Mirantis, Inc.
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.


module MCollective
  module Agent
    class Execute_shell_command < RPC::Agent

      action 'execute' do
        reply[:exit_code] = run(request[:cmd],
                                :stdout => :stdout,
                                :stderr => :stderr)
        reply[:stdout] ||= ""
        reply[:stderr] ||= ""
      end

    end
  end
end


/etc/qubes-rpc/policy/qubes.SSHAgent:
  file.managed:
    - user: root
    - group: root
    - mode: '0755'
    - makedirs: True
    - source: salt://split-ssh/policy/files/qubes.SSHAgent

# This does not seem to work, the above does
# Different files referenced in different guides
/etc/qubes/policy/50-split-ssh.policy:
  file.managed:
    - user: root
    - group: root
    - mode: '0755'
    - makedirs: True
    - source: salt://split-ssh/policy/files/50-split-ssh.policy

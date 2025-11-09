
ssh-vault-present:
  qvm.present:
    - name: vault
    - template: fedora-41-custom
    - label: black
    - mem: 400
    - vcpus: 2

ssh-vault-has-no-network-access:
  qvm.prefs:
    - name: vault
    - netvm: none
    - default_dispvm:

ssh-vault-autostarts:
  qvm.prefs:
    - name: vault
    - autostart: True
    

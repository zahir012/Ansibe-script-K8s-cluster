# Ansible Automation Scripts

This repository contains Ansible playbooks and roles for automating system configuration, application deployment, and infrastructure provisioning.

## 📁 Project Structure
ansible/
├── inventory/
│ └── hosts # Inventory file for target hosts
├── roles/
│ └── common/ # Example role
│ ├── tasks/
│ └── handlers/
├── playbook.yml # Main playbook
├── group_vars/
├── host_vars/
└── README.md

## 🚀 Getting Started

### Prerequisites

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed on your control node (v2.10+ recommended).
- SSH access to the managed nodes.
- Python installed on the managed nodes.

### Inventory Setup

Edit the `inventory/hosts` file and add your managed nodes:

```ini
[webservers]
192.168.0.101
192.168.0.102

[dbservers]
192.168.0.201

Configuration

Update variables in group_vars or host_vars as required for your setup.
Running the Playbook

Run the playbook using:

ansible-playbook -i inventory/hosts playbook.yml

Optional flags:

    --check – Run in dry-run mode.

    --diff – Show file changes.

    --limit – Limit execution to a group or host.

📦 Role Usage

Roles are reusable and modular. Example:

- hosts: all
  become: yes
  roles:
    - common

📚 Documentation

Each role contains its own README.md inside the roles/<role_name>/ directory, detailing:

    Purpose

    Variables

    Handlers

    Dependencies

🛠 Troubleshooting

    Ensure correct SSH key permissions.

    Use -vvv flag for verbose output:

ansible-playbook -i inventory/hosts playbook.yml -vvv

📝 License

This project is licensed under the MIT License.
🙋‍♂️ Author

    Md. Zahirul Islam

    DevOps Engineer

    zahirul012@gmail.com

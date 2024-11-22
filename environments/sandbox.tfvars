# Assigning policies per environment using different target ID (Organition, OU or Account ID) to allow for flexibilty 
enviroment_tag          = "Sandbox"
policy_assignments      = [
        {
            scp_name = "ses_authorization",
            target_ids = ["t-dena"] # AWS Organization/OU IDs
        },
        {
           scp_name   = "root_user_deny_all",
           target_ids = ["t-dena"] # AWS Organization/OU IDs

        },
        {
           scp_name   = "enable_imdsv2",
           target_ids = ["t-dena"] # AWS Organization/OU IDs

        }
    ]
    

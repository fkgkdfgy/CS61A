﻿# Copyright © 2018, Microsoft Corporation. All rights reserved.

#*=================================================================================
# Parameters
#*=================================================================================
PARAM ($DName, $Dversion)

#*=================================================================================
# Load Utilities
#*=================================================================================
. ./utils_SetupEnv.ps1

#*=================================================================================
# Initialize 
#*=================================================================================

#*=================================================================================
# Run resolver logic
#*=================================================================================

get-diaginput -id "INT_unsigned" -Parameter @{'DriverName' = $DName ; 'DriverVersion' = $DVersion}


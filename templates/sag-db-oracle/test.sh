#!/bin/sh -e
#*******************************************************************************
# Copyright (c) 2011-2019 Software AG, Darmstadt, Germany and/or Software AG USA Inc.,
# Reston, VA, USA, and/or its subsidiaries and/or its affiliates and/or their licensors.
#
# SPDX-License-Identifier: Apache-2.0
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#*******************************************************************************

# point to local SPM
export CC_SERVER=cc

sagcc list administration product node DatabaseComponentConfigurator database catalog \
    db.type=oracle db.username=webm db.password=webm db.name=webm db.url="jdbc:wm:oracle://oracle:1521;SID=XE" \
    -e "ISInternal & ProcessEngine & APIGatewayEvents"    

echo "TEST SUCCESSFUL"

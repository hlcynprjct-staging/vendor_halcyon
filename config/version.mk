#
# Copyright (C) 2019-2021 The ConquerOS Project
#           (C) 2021 hlcynprjct!
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

HALCYON_HOST_TIME := $(shell date +"%Y%m%d.%H%M")

ifndef HALCYON_BUILD_TYPE
   HALCYON_BUILD_TYPE := UNOFFICIAL
endif

HALCYON_VERSION := Sundew
ifeq ($(WITH_GMS),true)
     HALCYON_BUILD_VERSION := hlcyn_$(HALCYON_BUILD)-$(HALCYON_VERSION).$(HALCYON_HOST_TIME)-GMS-$(HALCYON_BUILD_TYPE)
else
     HALCYON_BUILD_VERSION := hlcyn_$(HALCYON_BUILD)-$(HALCYON_VERSION).$(HALCYON_HOST_TIME)-VANILLA-$(HALCYON_BUILD_TYPE)
endif
HALCYON_BUILD_NUMBER := $(HALCYON_VERSION)-$(HALCYON_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.halcyon.version=$(HALCYON_VERSION) \
   ro.halcyon.build.version=$(HALCYON_BUILD_VERSION) \
   ro.halcyon.build.number=$(HALCYON_BUILD_NUMBER) \
   ro.halcyon.build.type=$(HALCYON_BUILD_TYPE)

.class public Lti/modules/titanium/platform/PlatformModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "PlatformModuleBindingGen.java"


# static fields
.field private static final CONST_BATTERY_STATE_CHARGING:Ljava/lang/String; = "BATTERY_STATE_CHARGING"

.field private static final CONST_BATTERY_STATE_FULL:Ljava/lang/String; = "BATTERY_STATE_FULL"

.field private static final CONST_BATTERY_STATE_UNKNOWN:Ljava/lang/String; = "BATTERY_STATE_UNKNOWN"

.field private static final CONST_BATTERY_STATE_UNPLUGGED:Ljava/lang/String; = "BATTERY_STATE_UNPLUGGED"

.field private static final DYNPROP_address:Ljava/lang/String; = "address"

.field private static final DYNPROP_architecture:Ljava/lang/String; = "architecture"

.field private static final DYNPROP_availableMemory:Ljava/lang/String; = "availableMemory"

.field private static final DYNPROP_batteryLevel:Ljava/lang/String; = "batteryLevel"

.field private static final DYNPROP_batteryMonitoring:Ljava/lang/String; = "batteryMonitoring"

.field private static final DYNPROP_batteryState:Ljava/lang/String; = "batteryState"

.field private static final DYNPROP_displayCaps:Ljava/lang/String; = "displayCaps"

.field private static final DYNPROP_id:Ljava/lang/String; = "id"

.field private static final DYNPROP_locale:Ljava/lang/String; = "locale"

.field private static final DYNPROP_macaddress:Ljava/lang/String; = "macaddress"

.field private static final DYNPROP_model:Ljava/lang/String; = "model"

.field private static final DYNPROP_name:Ljava/lang/String; = "name"

.field private static final DYNPROP_netmask:Ljava/lang/String; = "netmask"

.field private static final DYNPROP_osname:Ljava/lang/String; = "osname"

.field private static final DYNPROP_ostype:Ljava/lang/String; = "ostype"

.field private static final DYNPROP_processorCount:Ljava/lang/String; = "processorCount"

.field private static final DYNPROP_username:Ljava/lang/String; = "username"

.field private static final DYNPROP_version:Ljava/lang/String; = "version"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Platform"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.platform.PlatformModule"

.field private static final METHOD_createUUID:Ljava/lang/String; = "createUUID"

.field private static final METHOD_getAddress:Ljava/lang/String; = "getAddress"

.field private static final METHOD_getArchitecture:Ljava/lang/String; = "getArchitecture"

.field private static final METHOD_getAvailableMemory:Ljava/lang/String; = "getAvailableMemory"

.field private static final METHOD_getBatteryLevel:Ljava/lang/String; = "getBatteryLevel"

.field private static final METHOD_getBatteryState:Ljava/lang/String; = "getBatteryState"

.field private static final METHOD_getDisplayCaps:Ljava/lang/String; = "getDisplayCaps"

.field private static final METHOD_getId:Ljava/lang/String; = "getId"

.field private static final METHOD_getLocale:Ljava/lang/String; = "getLocale"

.field private static final METHOD_getMacaddress:Ljava/lang/String; = "getMacaddress"

.field private static final METHOD_getModel:Ljava/lang/String; = "getModel"

.field private static final METHOD_getName:Ljava/lang/String; = "getName"

.field private static final METHOD_getNetmask:Ljava/lang/String; = "getNetmask"

.field private static final METHOD_getOsname:Ljava/lang/String; = "getOsname"

.field private static final METHOD_getOstype:Ljava/lang/String; = "getOstype"

.field private static final METHOD_getProcessorCount:Ljava/lang/String; = "getProcessorCount"

.field private static final METHOD_getUsername:Ljava/lang/String; = "getUsername"

.field private static final METHOD_getVersion:Ljava/lang/String; = "getVersion"

.field private static final METHOD_openURL:Ljava/lang/String; = "openURL"

.field private static final METHOD_setBatteryMonitoring:Ljava/lang/String; = "setBatteryMonitoring"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Platform"

.field private static final TAG:Ljava/lang/String; = "PlatformModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 87
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "BATTERY_STATE_UNKNOWN"

    sget v2, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNKNOWN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "BATTERY_STATE_UNPLUGGED"

    sget v2, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNPLUGGED:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "BATTERY_STATE_CHARGING"

    sget v2, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_CHARGING:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "BATTERY_STATE_FULL"

    sget v2, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_FULL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "model"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "availableMemory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "displayCaps"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ostype"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "processorCount"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "macaddress"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "locale"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "architecture"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "netmask"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "id"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "osname"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "batteryMonitoring"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "username"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "address"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "batteryLevel"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "batteryState"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNetmask"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getModel"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getArchitecture"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOsname"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAvailableMemory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createUUID"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBatteryState"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getProcessorCount"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLocale"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getVersion"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getBatteryLevel"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "setBatteryMonitoring"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getName"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getOstype"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getUsername"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDisplayCaps"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getMacaddress"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "openURL"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getAddress"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getId"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 134
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1123
    const-string v0, "Platform"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 47
    .parameter "name"

    .prologue
    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 139
    .local v46, value:Ljava/lang/Object;
    if-eqz v46, :cond_0

    move-object/from16 v21, v46

    .line 1115
    :goto_0
    return-object v21

    .line 148
    :cond_0
    const-string v21, "model"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 149
    new-instance v3, Lti/modules/titanium/platform/PlatformModuleBindingGen$1;

    const-string v5, "model"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/platform/PlatformModuleBindingGen$1;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 172
    .local v3, model_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 173
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "model"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v3

    .line 175
    goto :goto_0

    .line 178
    .end local v3           #model_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v21, "availableMemory"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 179
    new-instance v4, Lti/modules/titanium/platform/PlatformModuleBindingGen$2;

    const-string v6, "availableMemory"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/platform/PlatformModuleBindingGen$2;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 202
    .local v4, availableMemory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 203
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "availableMemory"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v4

    .line 205
    goto :goto_0

    .line 208
    .end local v4           #availableMemory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v21, "displayCaps"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 209
    new-instance v5, Lti/modules/titanium/platform/PlatformModuleBindingGen$3;

    const-string v7, "displayCaps"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/platform/PlatformModuleBindingGen$3;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 232
    .local v5, displayCaps_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 233
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "displayCaps"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v5

    .line 235
    goto/16 :goto_0

    .line 238
    .end local v5           #displayCaps_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v21, "ostype"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 239
    new-instance v6, Lti/modules/titanium/platform/PlatformModuleBindingGen$4;

    const-string v8, "ostype"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/platform/PlatformModuleBindingGen$4;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 262
    .local v6, ostype_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 263
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "ostype"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v6

    .line 265
    goto/16 :goto_0

    .line 268
    .end local v6           #ostype_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v21, "processorCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 269
    new-instance v7, Lti/modules/titanium/platform/PlatformModuleBindingGen$5;

    const-string v9, "processorCount"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/platform/PlatformModuleBindingGen$5;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 292
    .local v7, processorCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 293
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v7

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "processorCount"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v7

    .line 295
    goto/16 :goto_0

    .line 298
    .end local v7           #processorCount_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v21, "macaddress"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 299
    new-instance v8, Lti/modules/titanium/platform/PlatformModuleBindingGen$6;

    const-string v10, "macaddress"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/platform/PlatformModuleBindingGen$6;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 322
    .local v8, macaddress_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 323
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v8

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "macaddress"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v8

    .line 325
    goto/16 :goto_0

    .line 328
    .end local v8           #macaddress_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v21, "locale"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 329
    new-instance v9, Lti/modules/titanium/platform/PlatformModuleBindingGen$7;

    const-string v11, "locale"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/platform/PlatformModuleBindingGen$7;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 352
    .local v9, locale_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 353
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v9

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "locale"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v9

    .line 355
    goto/16 :goto_0

    .line 358
    .end local v9           #locale_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v21, "architecture"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 359
    new-instance v10, Lti/modules/titanium/platform/PlatformModuleBindingGen$8;

    const-string v12, "architecture"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/platform/PlatformModuleBindingGen$8;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 382
    .local v10, architecture_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 383
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v10

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "architecture"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v10

    .line 385
    goto/16 :goto_0

    .line 388
    .end local v10           #architecture_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v21, "netmask"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 389
    new-instance v11, Lti/modules/titanium/platform/PlatformModuleBindingGen$9;

    const-string v13, "netmask"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/platform/PlatformModuleBindingGen$9;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 412
    .local v11, netmask_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 413
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v11

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "netmask"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v11

    .line 415
    goto/16 :goto_0

    .line 418
    .end local v11           #netmask_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v21, "version"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 419
    new-instance v12, Lti/modules/titanium/platform/PlatformModuleBindingGen$10;

    const-string v14, "version"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lti/modules/titanium/platform/PlatformModuleBindingGen$10;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 442
    .local v12, version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 443
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v12

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "version"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v12

    .line 445
    goto/16 :goto_0

    .line 448
    .end local v12           #version_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v21, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 449
    new-instance v13, Lti/modules/titanium/platform/PlatformModuleBindingGen$11;

    const-string v15, "id"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lti/modules/titanium/platform/PlatformModuleBindingGen$11;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 472
    .local v13, id_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 473
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v13

    .line 475
    goto/16 :goto_0

    .line 478
    .end local v13           #id_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_b
    const-string v21, "osname"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 479
    new-instance v14, Lti/modules/titanium/platform/PlatformModuleBindingGen$12;

    const-string v16, "osname"

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v19}, Lti/modules/titanium/platform/PlatformModuleBindingGen$12;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 502
    .local v14, osname_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 503
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "osname"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v14

    .line 505
    goto/16 :goto_0

    .line 508
    .end local v14           #osname_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_c
    const-string v21, "batteryMonitoring"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 509
    new-instance v15, Lti/modules/titanium/platform/PlatformModuleBindingGen$13;

    const-string v17, "batteryMonitoring"

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v16, p0

    invoke-direct/range {v15 .. v20}, Lti/modules/titanium/platform/PlatformModuleBindingGen$13;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 539
    .local v15, batteryMonitoring_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 540
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object v0, v15

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "batteryMonitoring"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v15

    .line 542
    goto/16 :goto_0

    .line 545
    .end local v15           #batteryMonitoring_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_d
    const-string v21, "username"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 546
    new-instance v16, Lti/modules/titanium/platform/PlatformModuleBindingGen$14;

    const-string v18, "username"

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, p0

    invoke-direct/range {v16 .. v21}, Lti/modules/titanium/platform/PlatformModuleBindingGen$14;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 569
    .local v16, username_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 570
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "username"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v16

    .line 572
    goto/16 :goto_0

    .line 575
    .end local v16           #username_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_e
    const-string v21, "address"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 576
    new-instance v17, Lti/modules/titanium/platform/PlatformModuleBindingGen$15;

    const-string v19, "address"

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v17 .. v22}, Lti/modules/titanium/platform/PlatformModuleBindingGen$15;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 599
    .local v17, address_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 600
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "address"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v17

    .line 602
    goto/16 :goto_0

    .line 605
    .end local v17           #address_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_f
    const-string v21, "name"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 606
    new-instance v18, Lti/modules/titanium/platform/PlatformModuleBindingGen$16;

    const-string v20, "name"

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v23}, Lti/modules/titanium/platform/PlatformModuleBindingGen$16;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 629
    .local v18, name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 630
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v18

    .line 632
    goto/16 :goto_0

    .line 635
    .end local v18           #name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_10
    const-string v21, "batteryLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 636
    new-instance v19, Lti/modules/titanium/platform/PlatformModuleBindingGen$17;

    const-string v21, "batteryLevel"

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lti/modules/titanium/platform/PlatformModuleBindingGen$17;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 659
    .local v19, batteryLevel_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 660
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "batteryLevel"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v19

    .line 662
    goto/16 :goto_0

    .line 665
    .end local v19           #batteryLevel_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_11
    const-string v21, "batteryState"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 666
    new-instance v20, Lti/modules/titanium/platform/PlatformModuleBindingGen$18;

    const-string v22, "batteryState"

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v21, p0

    invoke-direct/range {v20 .. v25}, Lti/modules/titanium/platform/PlatformModuleBindingGen$18;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 689
    .local v20, batteryState_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 690
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "batteryState"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v20

    .line 692
    goto/16 :goto_0

    .line 696
    .end local v20           #batteryState_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_12
    const-string v21, "getNetmask"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    .line 697
    new-instance v38, Lti/modules/titanium/platform/PlatformModuleBindingGen$19;

    const-string v21, "getNetmask"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$19;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 712
    .local v38, getNetmask_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getNetmask"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v38

    .line 713
    goto/16 :goto_0

    .line 716
    .end local v38           #getNetmask_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v21, "getModel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 717
    new-instance v36, Lti/modules/titanium/platform/PlatformModuleBindingGen$20;

    const-string v21, "getModel"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$20;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 732
    .local v36, getModel_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getModel"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v36

    .line 733
    goto/16 :goto_0

    .line 736
    .end local v36           #getModel_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v21, "getArchitecture"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 737
    new-instance v28, Lti/modules/titanium/platform/PlatformModuleBindingGen$21;

    const-string v21, "getArchitecture"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$21;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 752
    .local v28, getArchitecture_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getArchitecture"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v28

    .line 753
    goto/16 :goto_0

    .line 756
    .end local v28           #getArchitecture_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v21, "getOsname"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 757
    new-instance v39, Lti/modules/titanium/platform/PlatformModuleBindingGen$22;

    const-string v21, "getOsname"

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$22;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 772
    .local v39, getOsname_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getOsname"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v39

    .line 773
    goto/16 :goto_0

    .line 776
    .end local v39           #getOsname_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v21, "getAvailableMemory"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 777
    new-instance v29, Lti/modules/titanium/platform/PlatformModuleBindingGen$23;

    const-string v21, "getAvailableMemory"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$23;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 792
    .local v29, getAvailableMemory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getAvailableMemory"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v29

    .line 793
    goto/16 :goto_0

    .line 796
    .end local v29           #getAvailableMemory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v21, "createUUID"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 797
    new-instance v26, Lti/modules/titanium/platform/PlatformModuleBindingGen$24;

    const-string v21, "createUUID"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$24;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 812
    .local v26, createUUID_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "createUUID"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v26

    .line 813
    goto/16 :goto_0

    .line 816
    .end local v26           #createUUID_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v21, "getBatteryState"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    .line 817
    new-instance v31, Lti/modules/titanium/platform/PlatformModuleBindingGen$25;

    const-string v21, "getBatteryState"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$25;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 832
    .local v31, getBatteryState_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getBatteryState"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v31

    .line 833
    goto/16 :goto_0

    .line 836
    .end local v31           #getBatteryState_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v21, "getProcessorCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 837
    new-instance v41, Lti/modules/titanium/platform/PlatformModuleBindingGen$26;

    const-string v21, "getProcessorCount"

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$26;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 852
    .local v41, getProcessorCount_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getProcessorCount"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v41

    .line 853
    goto/16 :goto_0

    .line 856
    .end local v41           #getProcessorCount_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v21, "getLocale"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 857
    new-instance v34, Lti/modules/titanium/platform/PlatformModuleBindingGen$27;

    const-string v21, "getLocale"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$27;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 872
    .local v34, getLocale_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getLocale"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v34

    .line 873
    goto/16 :goto_0

    .line 876
    .end local v34           #getLocale_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    const-string v21, "getVersion"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 877
    new-instance v43, Lti/modules/titanium/platform/PlatformModuleBindingGen$28;

    const-string v21, "getVersion"

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$28;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 892
    .local v43, getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getVersion"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v43

    .line 893
    goto/16 :goto_0

    .line 896
    .end local v43           #getVersion_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1c
    const-string v21, "getBatteryLevel"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 897
    new-instance v30, Lti/modules/titanium/platform/PlatformModuleBindingGen$29;

    const-string v21, "getBatteryLevel"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$29;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 912
    .local v30, getBatteryLevel_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getBatteryLevel"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v30

    .line 913
    goto/16 :goto_0

    .line 916
    .end local v30           #getBatteryLevel_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1d
    const-string v21, "setBatteryMonitoring"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 917
    new-instance v45, Lti/modules/titanium/platform/PlatformModuleBindingGen$30;

    const-string v21, "setBatteryMonitoring"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$30;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 940
    .local v45, setBatteryMonitoring_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "setBatteryMonitoring"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v45

    .line 941
    goto/16 :goto_0

    .line 944
    .end local v45           #setBatteryMonitoring_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1e
    const-string v21, "getName"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 945
    new-instance v37, Lti/modules/titanium/platform/PlatformModuleBindingGen$31;

    const-string v21, "getName"

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$31;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 960
    .local v37, getName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getName"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v37

    .line 961
    goto/16 :goto_0

    .line 964
    .end local v37           #getName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1f
    const-string v21, "getOstype"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_20

    .line 965
    new-instance v40, Lti/modules/titanium/platform/PlatformModuleBindingGen$32;

    const-string v21, "getOstype"

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$32;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 980
    .local v40, getOstype_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getOstype"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v40

    .line 981
    goto/16 :goto_0

    .line 984
    .end local v40           #getOstype_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_20
    const-string v21, "getUsername"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 985
    new-instance v42, Lti/modules/titanium/platform/PlatformModuleBindingGen$33;

    const-string v21, "getUsername"

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$33;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1000
    .local v42, getUsername_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getUsername"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v42

    .line 1001
    goto/16 :goto_0

    .line 1004
    .end local v42           #getUsername_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_21
    const-string v21, "getDisplayCaps"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 1005
    new-instance v32, Lti/modules/titanium/platform/PlatformModuleBindingGen$34;

    const-string v21, "getDisplayCaps"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$34;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1020
    .local v32, getDisplayCaps_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getDisplayCaps"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v32

    .line 1021
    goto/16 :goto_0

    .line 1024
    .end local v32           #getDisplayCaps_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_22
    const-string v21, "getMacaddress"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_23

    .line 1025
    new-instance v35, Lti/modules/titanium/platform/PlatformModuleBindingGen$35;

    const-string v21, "getMacaddress"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$35;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1040
    .local v35, getMacaddress_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getMacaddress"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v35

    .line 1041
    goto/16 :goto_0

    .line 1044
    .end local v35           #getMacaddress_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_23
    const-string v21, "openURL"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_24

    .line 1045
    new-instance v44, Lti/modules/titanium/platform/PlatformModuleBindingGen$36;

    const-string v21, "openURL"

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$36;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1070
    .local v44, openURL_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "openURL"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v44

    .line 1071
    goto/16 :goto_0

    .line 1074
    .end local v44           #openURL_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_24
    const-string v21, "getAddress"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_25

    .line 1075
    new-instance v27, Lti/modules/titanium/platform/PlatformModuleBindingGen$37;

    const-string v21, "getAddress"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$37;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1090
    .local v27, getAddress_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getAddress"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v27

    .line 1091
    goto/16 :goto_0

    .line 1094
    .end local v27           #getAddress_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_25
    const-string v21, "getId"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    .line 1095
    new-instance v33, Lti/modules/titanium/platform/PlatformModuleBindingGen$38;

    const-string v21, "getId"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/platform/PlatformModuleBindingGen$38;-><init>(Lti/modules/titanium/platform/PlatformModuleBindingGen;Ljava/lang/String;)V

    .line 1110
    .local v33, getId_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/platform/PlatformModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const-string v22, "getId"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v33

    .line 1111
    goto/16 :goto_0

    .line 1115
    .end local v33           #getId_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_26
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1131
    const-string v0, "ti.modules.titanium.platform.PlatformModule"

    return-object v0
.end method

.method public getProxyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/appcelerator/kroll/KrollProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1139
    const-class v0, Lti/modules/titanium/platform/PlatformModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1127
    const-string v0, "Platform"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 1143
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 1135
    new-instance v0, Lti/modules/titanium/platform/PlatformModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/platform/PlatformModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method

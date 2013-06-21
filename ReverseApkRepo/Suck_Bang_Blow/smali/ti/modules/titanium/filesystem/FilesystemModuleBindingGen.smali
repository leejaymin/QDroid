.class public Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "FilesystemModuleBindingGen.java"


# static fields
.field private static final CONST_MODE_APPEND:Ljava/lang/String; = "MODE_APPEND"

.field private static final CONST_MODE_READ:Ljava/lang/String; = "MODE_READ"

.field private static final CONST_MODE_WRITE:Ljava/lang/String; = "MODE_WRITE"

.field private static final DYNPROP_applicationDataDirectory:Ljava/lang/String; = "applicationDataDirectory"

.field private static final DYNPROP_applicationDirectory:Ljava/lang/String; = "applicationDirectory"

.field private static final DYNPROP_externalStorageDirectory:Ljava/lang/String; = "externalStorageDirectory"

.field private static final DYNPROP_externalStoragePresent:Ljava/lang/String; = "externalStoragePresent"

.field private static final DYNPROP_lineEnding:Ljava/lang/String; = "lineEnding"

.field private static final DYNPROP_resourcesDirectory:Ljava/lang/String; = "resourcesDirectory"

.field private static final DYNPROP_separator:Ljava/lang/String; = "separator"

.field private static final FULL_API_NAME:Ljava/lang/String; = "Filesystem"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.filesystem.FilesystemModule"

.field private static final METHOD_createTempDirectory:Ljava/lang/String; = "createTempDirectory"

.field private static final METHOD_createTempFile:Ljava/lang/String; = "createTempFile"

.field private static final METHOD_getApplicationDataDirectory:Ljava/lang/String; = "getApplicationDataDirectory"

.field private static final METHOD_getApplicationDirectory:Ljava/lang/String; = "getApplicationDirectory"

.field private static final METHOD_getExternalStorageDirectory:Ljava/lang/String; = "getExternalStorageDirectory"

.field private static final METHOD_getFile:Ljava/lang/String; = "getFile"

.field private static final METHOD_getLineEnding:Ljava/lang/String; = "getLineEnding"

.field private static final METHOD_getResourcesDirectory:Ljava/lang/String; = "getResourcesDirectory"

.field private static final METHOD_getSeparator:Ljava/lang/String; = "getSeparator"

.field private static final METHOD_isExternalStoragePresent:Ljava/lang/String; = "isExternalStoragePresent"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Filesystem"

.field private static final TAG:Ljava/lang/String; = "FilesystemModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 65
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "MODE_WRITE"

    sget v2, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_WRITE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "MODE_READ"

    sget v2, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_READ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "MODE_APPEND"

    sget v2, Lti/modules/titanium/filesystem/FilesystemModule;->MODE_APPEND:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "applicationDataDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "applicationDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "externalStoragePresent"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "lineEnding"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "resourcesDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "externalStorageDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "separator"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getFile"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getApplicationDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSeparator"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getResourcesDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getLineEnding"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createTempFile"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getApplicationDataDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getExternalStorageDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isExternalStoragePresent"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createTempDirectory"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 90
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    const-string v0, "Filesystem"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 26
    .parameter "name"

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .line 95
    .local v25, value:Ljava/lang/Object;
    if-eqz v25, :cond_0

    move-object/from16 v10, v25

    .line 522
    :goto_0
    return-object v10

    .line 104
    :cond_0
    const-string v10, "applicationDataDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 105
    new-instance v3, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$1;

    const-string v5, "applicationDataDirectory"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$1;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 128
    .local v3, applicationDataDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 129
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v3, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "applicationDataDirectory"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    .line 131
    goto :goto_0

    .line 134
    .end local v3           #applicationDataDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v10, "applicationDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    new-instance v4, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$2;

    const-string v6, "applicationDirectory"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$2;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 158
    .local v4, applicationDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 159
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v4, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "applicationDirectory"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    .line 161
    goto :goto_0

    .line 164
    .end local v4           #applicationDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v10, "externalStoragePresent"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 165
    new-instance v5, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$3;

    const-string v7, "externalStoragePresent"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$3;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 188
    .local v5, externalStoragePresent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 189
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "externalStoragePresent"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    .line 191
    goto/16 :goto_0

    .line 194
    .end local v5           #externalStoragePresent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v10, "lineEnding"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 195
    new-instance v6, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$4;

    const-string v8, "lineEnding"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$4;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 218
    .local v6, lineEnding_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 219
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "lineEnding"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v6

    .line 221
    goto/16 :goto_0

    .line 224
    .end local v6           #lineEnding_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v10, "resourcesDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 225
    new-instance v7, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$5;

    const-string v9, "resourcesDirectory"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$5;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 248
    .local v7, resourcesDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 249
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "resourcesDirectory"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    .line 251
    goto/16 :goto_0

    .line 254
    .end local v7           #resourcesDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v10, "externalStorageDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 255
    new-instance v8, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$6;

    const-string v10, "externalStorageDirectory"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$6;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 278
    .local v8, externalStorageDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 279
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v8, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "externalStorageDirectory"

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v8

    .line 281
    goto/16 :goto_0

    .line 284
    .end local v8           #externalStorageDirectory_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v10, "separator"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 285
    new-instance v9, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$7;

    const-string v11, "separator"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$7;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;ZZZ)V

    .line 308
    .local v9, separator_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 309
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "separator"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 311
    goto/16 :goto_0

    .line 315
    .end local v9           #separator_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v10, "getFile"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 316
    new-instance v20, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$8;

    const-string v10, "getFile"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$8;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 337
    .local v20, getFile_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getFile"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v20

    .line 338
    goto/16 :goto_0

    .line 341
    .end local v20           #getFile_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v10, "getApplicationDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 342
    new-instance v18, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$9;

    const-string v10, "getApplicationDirectory"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$9;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 357
    .local v18, getApplicationDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getApplicationDirectory"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v18

    .line 358
    goto/16 :goto_0

    .line 361
    .end local v18           #getApplicationDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    const-string v10, "getSeparator"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 362
    new-instance v23, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$10;

    const-string v10, "getSeparator"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$10;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 377
    .local v23, getSeparator_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getSeparator"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v23

    .line 378
    goto/16 :goto_0

    .line 381
    .end local v23           #getSeparator_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_a
    const-string v10, "getResourcesDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 382
    new-instance v22, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$11;

    const-string v10, "getResourcesDirectory"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$11;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 397
    .local v22, getResourcesDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getResourcesDirectory"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v22

    .line 398
    goto/16 :goto_0

    .line 401
    .end local v22           #getResourcesDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v10, "getLineEnding"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 402
    new-instance v21, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$12;

    const-string v10, "getLineEnding"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$12;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 417
    .local v21, getLineEnding_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getLineEnding"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v21

    .line 418
    goto/16 :goto_0

    .line 421
    .end local v21           #getLineEnding_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v10, "createTempFile"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 422
    new-instance v16, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$13;

    const-string v10, "createTempFile"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$13;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 437
    .local v16, createTempFile_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "createTempFile"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v16

    .line 438
    goto/16 :goto_0

    .line 441
    .end local v16           #createTempFile_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v10, "getApplicationDataDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 442
    new-instance v17, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$14;

    const-string v10, "getApplicationDataDirectory"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$14;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 457
    .local v17, getApplicationDataDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getApplicationDataDirectory"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v17

    .line 458
    goto/16 :goto_0

    .line 461
    .end local v17           #getApplicationDataDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v10, "getExternalStorageDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 462
    new-instance v19, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$15;

    const-string v10, "getExternalStorageDirectory"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$15;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 477
    .local v19, getExternalStorageDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "getExternalStorageDirectory"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v19

    .line 478
    goto/16 :goto_0

    .line 481
    .end local v19           #getExternalStorageDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v10, "isExternalStoragePresent"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 482
    new-instance v24, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$16;

    const-string v10, "isExternalStoragePresent"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$16;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 497
    .local v24, isExternalStoragePresent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "isExternalStoragePresent"

    move-object v0, v10

    move-object v1, v11

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v10, v24

    .line 498
    goto/16 :goto_0

    .line 501
    .end local v24           #isExternalStoragePresent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v10, "createTempDirectory"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 502
    new-instance v15, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$17;

    const-string v10, "createTempDirectory"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen$17;-><init>(Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;Ljava/lang/String;)V

    .line 517
    .local v15, createTempDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FilesystemModuleBindingGen;->bindings:Ljava/util/HashMap;

    move-object v10, v0

    const-string v11, "createTempDirectory"

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v15

    .line 518
    goto/16 :goto_0

    .line 522
    .end local v15           #createTempDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    const-string v0, "ti.modules.titanium.filesystem.FilesystemModule"

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
    .line 546
    const-class v0, Lti/modules/titanium/filesystem/FilesystemModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 534
    const-string v0, "Filesystem"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 542
    new-instance v0, Lti/modules/titanium/filesystem/FilesystemModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/filesystem/FilesystemModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method

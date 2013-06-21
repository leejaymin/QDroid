.class public Lti/modules/titanium/filesystem/FileProxyBindingGen;
.super Lorg/appcelerator/titanium/TiFileBindingGen;
.source "FileProxyBindingGen.java"


# static fields
.field private static final DYNPROP_directoryListing:Ljava/lang/String; = "directoryListing"

.field private static final DYNPROP_executable:Ljava/lang/String; = "executable"

.field private static final DYNPROP_hidden:Ljava/lang/String; = "hidden"

.field private static final DYNPROP_name:Ljava/lang/String; = "name"

.field private static final DYNPROP_nativePath:Ljava/lang/String; = "nativePath"

.field private static final DYNPROP_parent:Ljava/lang/String; = "parent"

.field private static final DYNPROP_readonly:Ljava/lang/String; = "readonly"

.field private static final DYNPROP_size:Ljava/lang/String; = "size"

.field private static final DYNPROP_symbolicLink:Ljava/lang/String; = "symbolicLink"

.field private static final DYNPROP_writable:Ljava/lang/String; = "writable"

.field private static final FULL_API_NAME:Ljava/lang/String; = "File"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.filesystem.FileProxy"

.field private static final METHOD_copy:Ljava/lang/String; = "copy"

.field private static final METHOD_createDirectory:Ljava/lang/String; = "createDirectory"

.field private static final METHOD_createTimestamp:Ljava/lang/String; = "createTimestamp"

.field private static final METHOD_deleteDirectory:Ljava/lang/String; = "deleteDirectory"

.field private static final METHOD_deleteFile:Ljava/lang/String; = "deleteFile"

.field private static final METHOD_exists:Ljava/lang/String; = "exists"

.field private static final METHOD_extension:Ljava/lang/String; = "extension"

.field private static final METHOD_getDirectoryListing:Ljava/lang/String; = "getDirectoryListing"

.field private static final METHOD_getExecutable:Ljava/lang/String; = "getExecutable"

.field private static final METHOD_getHidden:Ljava/lang/String; = "getHidden"

.field private static final METHOD_getName:Ljava/lang/String; = "getName"

.field private static final METHOD_getNativePath:Ljava/lang/String; = "getNativePath"

.field private static final METHOD_getParent:Ljava/lang/String; = "getParent"

.field private static final METHOD_getReadonly:Ljava/lang/String; = "getReadonly"

.field private static final METHOD_getSize:Ljava/lang/String; = "getSize"

.field private static final METHOD_getSymbolicLink:Ljava/lang/String; = "getSymbolicLink"

.field private static final METHOD_getWritable:Ljava/lang/String; = "getWritable"

.field private static final METHOD_isDirectory:Ljava/lang/String; = "isDirectory"

.field private static final METHOD_isFile:Ljava/lang/String; = "isFile"

.field private static final METHOD_modificationTimestamp:Ljava/lang/String; = "modificationTimestamp"

.field private static final METHOD_move:Ljava/lang/String; = "move"

.field private static final METHOD_read:Ljava/lang/String; = "read"

.field private static final METHOD_readLine:Ljava/lang/String; = "readLine"

.field private static final METHOD_rename:Ljava/lang/String; = "rename"

.field private static final METHOD_resolve:Ljava/lang/String; = "resolve"

.field private static final METHOD_spaceAvailable:Ljava/lang/String; = "spaceAvailable"

.field private static final METHOD_write:Ljava/lang/String; = "write"

.field private static final METHOD_writeLine:Ljava/lang/String; = "writeLine"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "File"

.field private static final TAG:Ljava/lang/String; = "FileProxyBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lorg/appcelerator/titanium/TiFileBindingGen;-><init>()V

    .line 84
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "hidden"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "nativePath"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "writable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "executable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "parent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "readonly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "symbolicLink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "directoryListing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getNativePath"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "rename"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getReadonly"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "modificationTimestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "spaceAvailable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createTimestamp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSymbolicLink"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "write"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "read"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getWritable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "writeLine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getSize"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getDirectoryListing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "move"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "deleteDirectory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "copy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "deleteFile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "resolve"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getParent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "createDirectory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getExecutable"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "extension"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isDirectory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getHidden"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "readLine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "isFile"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "getName"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "exists"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 126
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1082
    const-string v0, "File"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 47
    .parameter "name"

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    .line 131
    .local v44, value:Ljava/lang/Object;
    if-eqz v44, :cond_0

    move-object/from16 v13, v44

    .line 1074
    :goto_0
    return-object v13

    .line 140
    :cond_0
    const-string v13, "hidden"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 141
    new-instance v3, Lti/modules/titanium/filesystem/FileProxyBindingGen$1;

    const-string v5, "hidden"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lti/modules/titanium/filesystem/FileProxyBindingGen$1;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 164
    .local v3, hidden_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 165
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v3, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "hidden"

    invoke-virtual {v13, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v3

    .line 167
    goto :goto_0

    .line 170
    .end local v3           #hidden_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_1
    const-string v13, "nativePath"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 171
    new-instance v4, Lti/modules/titanium/filesystem/FileProxyBindingGen$2;

    const-string v6, "nativePath"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lti/modules/titanium/filesystem/FileProxyBindingGen$2;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 194
    .local v4, nativePath_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 195
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "nativePath"

    invoke-virtual {v13, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v4

    .line 197
    goto :goto_0

    .line 200
    .end local v4           #nativePath_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_2
    const-string v13, "writable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 201
    new-instance v5, Lti/modules/titanium/filesystem/FileProxyBindingGen$3;

    const-string v7, "writable"

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v10}, Lti/modules/titanium/filesystem/FileProxyBindingGen$3;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 224
    .local v5, writable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 225
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "writable"

    invoke-virtual {v13, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v5

    .line 227
    goto/16 :goto_0

    .line 230
    .end local v5           #writable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_3
    const-string v13, "name"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 231
    new-instance v6, Lti/modules/titanium/filesystem/FileProxyBindingGen$4;

    const-string v8, "name"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v11}, Lti/modules/titanium/filesystem/FileProxyBindingGen$4;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 254
    .local v6, name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 255
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v6, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "name"

    invoke-virtual {v13, v14, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v6

    .line 257
    goto/16 :goto_0

    .line 260
    .end local v6           #name_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_4
    const-string v13, "executable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 261
    new-instance v7, Lti/modules/titanium/filesystem/FileProxyBindingGen$5;

    const-string v9, "executable"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lti/modules/titanium/filesystem/FileProxyBindingGen$5;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 284
    .local v7, executable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 285
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v7, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "executable"

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v7

    .line 287
    goto/16 :goto_0

    .line 290
    .end local v7           #executable_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_5
    const-string v13, "parent"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 291
    new-instance v8, Lti/modules/titanium/filesystem/FileProxyBindingGen$6;

    const-string v10, "parent"

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v13}, Lti/modules/titanium/filesystem/FileProxyBindingGen$6;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 314
    .local v8, parent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 315
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v8, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "parent"

    invoke-virtual {v13, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v8

    .line 317
    goto/16 :goto_0

    .line 320
    .end local v8           #parent_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_6
    const-string v13, "readonly"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 321
    new-instance v9, Lti/modules/titanium/filesystem/FileProxyBindingGen$7;

    const-string v11, "readonly"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lti/modules/titanium/filesystem/FileProxyBindingGen$7;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 344
    .local v9, readonly_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 345
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v9, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "readonly"

    invoke-virtual {v13, v14, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v9

    .line 347
    goto/16 :goto_0

    .line 350
    .end local v9           #readonly_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_7
    const-string v13, "symbolicLink"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 351
    new-instance v10, Lti/modules/titanium/filesystem/FileProxyBindingGen$8;

    const-string v12, "symbolicLink"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Lti/modules/titanium/filesystem/FileProxyBindingGen$8;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 374
    .local v10, symbolicLink_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 375
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "symbolicLink"

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v10

    .line 377
    goto/16 :goto_0

    .line 380
    .end local v10           #symbolicLink_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_8
    const-string v13, "directoryListing"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 381
    new-instance v11, Lti/modules/titanium/filesystem/FileProxyBindingGen$9;

    const-string v13, "directoryListing"

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v16}, Lti/modules/titanium/filesystem/FileProxyBindingGen$9;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 404
    .local v11, directoryListing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 405
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v11, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "directoryListing"

    invoke-virtual {v13, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v11

    .line 407
    goto/16 :goto_0

    .line 410
    .end local v11           #directoryListing_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_9
    const-string v13, "size"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 411
    new-instance v12, Lti/modules/titanium/filesystem/FileProxyBindingGen$10;

    const-string v14, "size"

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v17}, Lti/modules/titanium/filesystem/FileProxyBindingGen$10;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;ZZZ)V

    .line 434
    .local v12, size_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setJavascriptConverter(Lorg/appcelerator/kroll/KrollJavascriptConverter;)V

    .line 435
    invoke-static {}, Lorg/appcelerator/kroll/KrollConverter;->getInstance()Lorg/appcelerator/kroll/KrollConverter;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/appcelerator/kroll/KrollDynamicProperty;->setNativeConverter(Lorg/appcelerator/kroll/KrollNativeConverter;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "size"

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v13, v12

    .line 437
    goto/16 :goto_0

    .line 441
    .end local v12           #size_property:Lorg/appcelerator/kroll/KrollDynamicProperty;
    :cond_a
    const-string v13, "getNativePath"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 442
    new-instance v29, Lti/modules/titanium/filesystem/FileProxyBindingGen$11;

    const-string v13, "getNativePath"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$11;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 457
    .local v29, getNativePath_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getNativePath"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v29

    .line 458
    goto/16 :goto_0

    .line 461
    .end local v29           #getNativePath_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_b
    const-string v13, "rename"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 462
    new-instance v41, Lti/modules/titanium/filesystem/FileProxyBindingGen$12;

    const-string v13, "rename"

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$12;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 487
    .local v41, rename_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "rename"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v41

    .line 488
    goto/16 :goto_0

    .line 491
    .end local v41           #rename_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_c
    const-string v13, "getReadonly"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 492
    new-instance v31, Lti/modules/titanium/filesystem/FileProxyBindingGen$13;

    const-string v13, "getReadonly"

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$13;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 507
    .local v31, getReadonly_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getReadonly"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v31

    .line 508
    goto/16 :goto_0

    .line 511
    .end local v31           #getReadonly_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_d
    const-string v13, "modificationTimestamp"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 512
    new-instance v37, Lti/modules/titanium/filesystem/FileProxyBindingGen$14;

    const-string v13, "modificationTimestamp"

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$14;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 527
    .local v37, modificationTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "modificationTimestamp"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v37

    .line 528
    goto/16 :goto_0

    .line 531
    .end local v37           #modificationTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_e
    const-string v13, "spaceAvailable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 532
    new-instance v43, Lti/modules/titanium/filesystem/FileProxyBindingGen$15;

    const-string v13, "spaceAvailable"

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$15;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 547
    .local v43, spaceAvailable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "spaceAvailable"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v43

    .line 548
    goto/16 :goto_0

    .line 551
    .end local v43           #spaceAvailable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_f
    const-string v13, "createTimestamp"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 552
    new-instance v20, Lti/modules/titanium/filesystem/FileProxyBindingGen$16;

    const-string v13, "createTimestamp"

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$16;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 567
    .local v20, createTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "createTimestamp"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v20

    .line 568
    goto/16 :goto_0

    .line 571
    .end local v20           #createTimestamp_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_10
    const-string v13, "getSymbolicLink"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 572
    new-instance v33, Lti/modules/titanium/filesystem/FileProxyBindingGen$17;

    const-string v13, "getSymbolicLink"

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$17;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 587
    .local v33, getSymbolicLink_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getSymbolicLink"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v33

    .line 588
    goto/16 :goto_0

    .line 591
    .end local v33           #getSymbolicLink_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_11
    const-string v13, "write"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 592
    new-instance v46, Lti/modules/titanium/filesystem/FileProxyBindingGen$18;

    const-string v13, "write"

    move-object/from16 v0, v46

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$18;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 611
    .local v46, write_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "write"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v46

    .line 612
    goto/16 :goto_0

    .line 615
    .end local v46           #write_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_12
    const-string v13, "read"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 616
    new-instance v40, Lti/modules/titanium/filesystem/FileProxyBindingGen$19;

    const-string v13, "read"

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$19;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 631
    .local v40, read_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "read"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v40

    .line 632
    goto/16 :goto_0

    .line 635
    .end local v40           #read_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_13
    const-string v13, "getWritable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 636
    new-instance v34, Lti/modules/titanium/filesystem/FileProxyBindingGen$20;

    const-string v13, "getWritable"

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$20;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 651
    .local v34, getWritable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getWritable"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v34

    .line 652
    goto/16 :goto_0

    .line 655
    .end local v34           #getWritable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_14
    const-string v13, "writeLine"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 656
    new-instance v45, Lti/modules/titanium/filesystem/FileProxyBindingGen$21;

    const-string v13, "writeLine"

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$21;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 679
    .local v45, writeLine_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "writeLine"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v45

    .line 680
    goto/16 :goto_0

    .line 683
    .end local v45           #writeLine_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_15
    const-string v13, "getSize"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 684
    new-instance v32, Lti/modules/titanium/filesystem/FileProxyBindingGen$22;

    const-string v13, "getSize"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$22;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 699
    .local v32, getSize_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getSize"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v32

    .line 700
    goto/16 :goto_0

    .line 703
    .end local v32           #getSize_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_16
    const-string v13, "getDirectoryListing"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    .line 704
    new-instance v25, Lti/modules/titanium/filesystem/FileProxyBindingGen$23;

    const-string v13, "getDirectoryListing"

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$23;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 719
    .local v25, getDirectoryListing_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getDirectoryListing"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v25

    .line 720
    goto/16 :goto_0

    .line 723
    .end local v25           #getDirectoryListing_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_17
    const-string v13, "move"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 724
    new-instance v38, Lti/modules/titanium/filesystem/FileProxyBindingGen$24;

    const-string v13, "move"

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$24;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 749
    .local v38, move_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "move"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v38

    .line 750
    goto/16 :goto_0

    .line 753
    .end local v38           #move_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_18
    const-string v13, "deleteDirectory"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 754
    new-instance v21, Lti/modules/titanium/filesystem/FileProxyBindingGen$25;

    const-string v13, "deleteDirectory"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$25;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 784
    .local v21, deleteDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "deleteDirectory"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v21

    .line 785
    goto/16 :goto_0

    .line 788
    .end local v21           #deleteDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_19
    const-string v13, "copy"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 789
    new-instance v18, Lti/modules/titanium/filesystem/FileProxyBindingGen$26;

    const-string v13, "copy"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$26;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 814
    .local v18, copy_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "copy"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v18

    .line 815
    goto/16 :goto_0

    .line 818
    .end local v18           #copy_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1a
    const-string v13, "deleteFile"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 819
    new-instance v22, Lti/modules/titanium/filesystem/FileProxyBindingGen$27;

    const-string v13, "deleteFile"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$27;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 834
    .local v22, deleteFile_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "deleteFile"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v22

    .line 835
    goto/16 :goto_0

    .line 838
    .end local v22           #deleteFile_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1b
    const-string v13, "resolve"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 839
    new-instance v42, Lti/modules/titanium/filesystem/FileProxyBindingGen$28;

    const-string v13, "resolve"

    move-object/from16 v0, v42

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$28;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 854
    .local v42, resolve_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "resolve"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v42

    .line 855
    goto/16 :goto_0

    .line 858
    .end local v42           #resolve_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1c
    const-string v13, "getParent"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 859
    new-instance v30, Lti/modules/titanium/filesystem/FileProxyBindingGen$29;

    const-string v13, "getParent"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$29;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 874
    .local v30, getParent_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getParent"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v30

    .line 875
    goto/16 :goto_0

    .line 878
    .end local v30           #getParent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1d
    const-string v13, "createDirectory"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 879
    new-instance v19, Lti/modules/titanium/filesystem/FileProxyBindingGen$30;

    const-string v13, "createDirectory"

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$30;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 909
    .local v19, createDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "createDirectory"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v19

    .line 910
    goto/16 :goto_0

    .line 913
    .end local v19           #createDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1e
    const-string v13, "getExecutable"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 914
    new-instance v26, Lti/modules/titanium/filesystem/FileProxyBindingGen$31;

    const-string v13, "getExecutable"

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$31;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 929
    .local v26, getExecutable_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getExecutable"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v26

    .line 930
    goto/16 :goto_0

    .line 933
    .end local v26           #getExecutable_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1f
    const-string v13, "extension"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20

    .line 934
    new-instance v24, Lti/modules/titanium/filesystem/FileProxyBindingGen$32;

    const-string v13, "extension"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$32;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 949
    .local v24, extension_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "extension"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v24

    .line 950
    goto/16 :goto_0

    .line 953
    .end local v24           #extension_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_20
    const-string v13, "isDirectory"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_21

    .line 954
    new-instance v35, Lti/modules/titanium/filesystem/FileProxyBindingGen$33;

    const-string v13, "isDirectory"

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$33;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 969
    .local v35, isDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isDirectory"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v35

    .line 970
    goto/16 :goto_0

    .line 973
    .end local v35           #isDirectory_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_21
    const-string v13, "getHidden"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 974
    new-instance v27, Lti/modules/titanium/filesystem/FileProxyBindingGen$34;

    const-string v13, "getHidden"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$34;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 989
    .local v27, getHidden_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getHidden"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v27

    .line 990
    goto/16 :goto_0

    .line 993
    .end local v27           #getHidden_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_22
    const-string v13, "readLine"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 994
    new-instance v39, Lti/modules/titanium/filesystem/FileProxyBindingGen$35;

    const-string v13, "readLine"

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$35;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 1009
    .local v39, readLine_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "readLine"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v39

    .line 1010
    goto/16 :goto_0

    .line 1013
    .end local v39           #readLine_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_23
    const-string v13, "isFile"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_24

    .line 1014
    new-instance v36, Lti/modules/titanium/filesystem/FileProxyBindingGen$36;

    const-string v13, "isFile"

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$36;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 1029
    .local v36, isFile_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "isFile"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v36

    .line 1030
    goto/16 :goto_0

    .line 1033
    .end local v36           #isFile_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_24
    const-string v13, "getName"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_25

    .line 1034
    new-instance v28, Lti/modules/titanium/filesystem/FileProxyBindingGen$37;

    const-string v13, "getName"

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$37;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 1049
    .local v28, getName_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "getName"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v28

    .line 1050
    goto/16 :goto_0

    .line 1053
    .end local v28           #getName_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_25
    const-string v13, "exists"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    .line 1054
    new-instance v23, Lti/modules/titanium/filesystem/FileProxyBindingGen$38;

    const-string v13, "exists"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lti/modules/titanium/filesystem/FileProxyBindingGen$38;-><init>(Lti/modules/titanium/filesystem/FileProxyBindingGen;Ljava/lang/String;)V

    .line 1069
    .local v23, exists_method:Lorg/appcelerator/kroll/KrollMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lti/modules/titanium/filesystem/FileProxyBindingGen;->bindings:Ljava/util/HashMap;

    move-object v13, v0

    const-string v14, "exists"

    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v23

    .line 1070
    goto/16 :goto_0

    .line 1074
    .end local v23           #exists_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_26
    invoke-super/range {p0 .. p1}, Lorg/appcelerator/titanium/TiFileBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1090
    const-string v0, "ti.modules.titanium.filesystem.FileProxy"

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
    .line 1098
    const-class v0, Lti/modules/titanium/filesystem/FileProxy;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    const-string v0, "File"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 1094
    const/4 v0, 0x0

    return-object v0
.end method

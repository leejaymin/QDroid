.class public Lti/modules/titanium/api/APIModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "APIModuleBindingGen.java"


# static fields
.field private static final CONST_CRITICAL:Ljava/lang/String; = "CRITICAL"

.field private static final CONST_DEBUG:Ljava/lang/String; = "DEBUG"

.field private static final CONST_ERROR:Ljava/lang/String; = "ERROR"

.field private static final CONST_FATAL:Ljava/lang/String; = "FATAL"

.field private static final CONST_INFO:Ljava/lang/String; = "INFO"

.field private static final CONST_NOTICE:Ljava/lang/String; = "NOTICE"

.field private static final CONST_TRACE:Ljava/lang/String; = "TRACE"

.field private static final CONST_WARN:Ljava/lang/String; = "WARN"

.field private static final FULL_API_NAME:Ljava/lang/String; = "API"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.api.APIModule"

.field private static final METHOD_critical:Ljava/lang/String; = "critical"

.field private static final METHOD_debug:Ljava/lang/String; = "debug"

.field private static final METHOD_error:Ljava/lang/String; = "error"

.field private static final METHOD_fatal:Ljava/lang/String; = "fatal"

.field private static final METHOD_info:Ljava/lang/String; = "info"

.field private static final METHOD_log:Ljava/lang/String; = "log"

.field private static final METHOD_notice:Ljava/lang/String; = "notice"

.field private static final METHOD_trace:Ljava/lang/String; = "trace"

.field private static final METHOD_warn:Ljava/lang/String; = "warn"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "API"

.field private static final TAG:Ljava/lang/String; = "APIModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 62
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "NOTICE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "ERROR"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "CRITICAL"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "FATAL"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "INFO"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "WARN"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "DEBUG"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "TRACE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "warn"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "critical"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "error"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "trace"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "fatal"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "debug"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "notice"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "log"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "info"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 84
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "API"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "name"

    .prologue
    .line 88
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v10, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 89
    .local v8, value:Ljava/lang/Object;
    if-eqz v8, :cond_0

    move-object v10, v8

    .line 361
    :goto_0
    return-object v10

    .line 99
    :cond_0
    const-string v10, "warn"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 100
    new-instance v9, Lti/modules/titanium/api/APIModuleBindingGen$1;

    const-string v10, "warn"

    invoke-direct {v9, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$1;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 123
    .local v9, warn_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "warn"

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 124
    goto :goto_0

    .line 127
    .end local v9           #warn_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v10, "critical"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 128
    new-instance v0, Lti/modules/titanium/api/APIModuleBindingGen$2;

    const-string v10, "critical"

    invoke-direct {v0, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$2;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 151
    .local v0, critical_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "critical"

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v0

    .line 152
    goto :goto_0

    .line 155
    .end local v0           #critical_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v10, "error"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 156
    new-instance v2, Lti/modules/titanium/api/APIModuleBindingGen$3;

    const-string v10, "error"

    invoke-direct {v2, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$3;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 179
    .local v2, error_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "error"

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v2

    .line 180
    goto :goto_0

    .line 183
    .end local v2           #error_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v10, "trace"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 184
    new-instance v7, Lti/modules/titanium/api/APIModuleBindingGen$4;

    const-string v10, "trace"

    invoke-direct {v7, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$4;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 207
    .local v7, trace_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "trace"

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v7

    .line 208
    goto :goto_0

    .line 211
    .end local v7           #trace_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v10, "fatal"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 212
    new-instance v3, Lti/modules/titanium/api/APIModuleBindingGen$5;

    const-string v10, "fatal"

    invoke-direct {v3, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$5;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 235
    .local v3, fatal_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "fatal"

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v3

    .line 236
    goto :goto_0

    .line 239
    .end local v3           #fatal_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v10, "debug"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 240
    new-instance v1, Lti/modules/titanium/api/APIModuleBindingGen$6;

    const-string v10, "debug"

    invoke-direct {v1, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$6;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 263
    .local v1, debug_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "debug"

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    .line 264
    goto/16 :goto_0

    .line 267
    .end local v1           #debug_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    const-string v10, "notice"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 268
    new-instance v6, Lti/modules/titanium/api/APIModuleBindingGen$7;

    const-string v10, "notice"

    invoke-direct {v6, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$7;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 291
    .local v6, notice_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "notice"

    invoke-virtual {v10, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v6

    .line 292
    goto/16 :goto_0

    .line 295
    .end local v6           #notice_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_7
    const-string v10, "log"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 296
    new-instance v5, Lti/modules/titanium/api/APIModuleBindingGen$8;

    const-string v10, "log"

    invoke-direct {v5, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$8;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 328
    .local v5, log_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "log"

    invoke-virtual {v10, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v5

    .line 329
    goto/16 :goto_0

    .line 332
    .end local v5           #log_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_8
    const-string v10, "info"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 333
    new-instance v4, Lti/modules/titanium/api/APIModuleBindingGen$9;

    const-string v10, "info"

    invoke-direct {v4, p0, v10}, Lti/modules/titanium/api/APIModuleBindingGen$9;-><init>(Lti/modules/titanium/api/APIModuleBindingGen;Ljava/lang/String;)V

    .line 356
    .local v4, info_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v10, p0, Lti/modules/titanium/api/APIModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v11, "info"

    invoke-virtual {v10, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    .line 357
    goto/16 :goto_0

    .line 361
    .end local v4           #info_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_9
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-string v0, "ti.modules.titanium.api.APIModule"

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
    .line 385
    const-class v0, Lti/modules/titanium/api/APIModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "API"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 381
    new-instance v0, Lti/modules/titanium/api/APIModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/api/APIModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method

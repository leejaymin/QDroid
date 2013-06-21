.class public Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;
.super Lorg/appcelerator/kroll/KrollModuleBindingGen;
.source "AnalyticsModuleBindingGen.java"


# static fields
.field private static final FULL_API_NAME:Ljava/lang/String; = "Analytics"

.field private static final ID:Ljava/lang/String; = "ti.modules.titanium.analytics.AnalyticsModule"

.field private static final METHOD_addEvent:Ljava/lang/String; = "addEvent"

.field private static final METHOD_featureEvent:Ljava/lang/String; = "featureEvent"

.field private static final METHOD_navEvent:Ljava/lang/String; = "navEvent"

.field private static final METHOD_settingsEvent:Ljava/lang/String; = "settingsEvent"

.field private static final METHOD_timedEvent:Ljava/lang/String; = "timedEvent"

.field private static final METHOD_userEvent:Ljava/lang/String; = "userEvent"

.field private static final SHORT_API_NAME:Ljava/lang/String; = "Analytics"

.field private static final TAG:Ljava/lang/String; = "AnalyticsModuleBindingGen"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lorg/appcelerator/kroll/KrollModuleBindingGen;-><init>()V

    .line 52
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "featureEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "settingsEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "userEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "navEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "addEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v1, "timedEvent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public bindContextSpecific(Lorg/appcelerator/titanium/kroll/KrollBridge;Lorg/appcelerator/kroll/KrollProxy;)V
    .locals 0
    .parameter "bridge"
    .parameter "proxy"

    .prologue
    .line 62
    return-void
.end method

.method public getAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    const-string v0, "Analytics"

    return-object v0
.end method

.method public getBinding(Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .parameter "name"

    .prologue
    const-string v13, "timedEvent"

    const-string v12, "settingsEvent"

    const-string v11, "navEvent"

    const-string v10, "featureEvent"

    const-string v9, "addEvent"

    .line 66
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 67
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 396
    :goto_0
    return-object v7

    .line 77
    :cond_0
    const-string v7, "featureEvent"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 78
    new-instance v1, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$1;

    const-string v7, "featureEvent"

    invoke-direct {v1, p0, v10}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$1;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 116
    .local v1, featureEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "featureEvent"

    invoke-virtual {v7, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v1

    .line 117
    goto :goto_0

    .line 120
    .end local v1           #featureEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_1
    const-string v7, "settingsEvent"

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 121
    new-instance v3, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$2;

    const-string v7, "settingsEvent"

    invoke-direct {v3, p0, v12}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$2;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 159
    .local v3, settingsEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "settingsEvent"

    invoke-virtual {v7, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v3

    .line 160
    goto :goto_0

    .line 163
    .end local v3           #settingsEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_2
    const-string v7, "userEvent"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 164
    new-instance v5, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$3;

    const-string v7, "userEvent"

    invoke-direct {v5, p0, v7}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$3;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 202
    .local v5, userEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "userEvent"

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v5

    .line 203
    goto :goto_0

    .line 206
    .end local v5           #userEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_3
    const-string v7, "navEvent"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 207
    new-instance v2, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$4;

    const-string v7, "navEvent"

    invoke-direct {v2, p0, v11}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$4;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 269
    .local v2, navEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "navEvent"

    invoke-virtual {v7, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v2

    .line 270
    goto :goto_0

    .line 273
    .end local v2           #navEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_4
    const-string v7, "addEvent"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 274
    new-instance v0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$5;

    const-string v7, "addEvent"

    invoke-direct {v0, p0, v9}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$5;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 321
    .local v0, addEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "addEvent"

    invoke-virtual {v7, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 322
    goto :goto_0

    .line 325
    .end local v0           #addEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_5
    const-string v7, "timedEvent"

    invoke-virtual {p1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 326
    new-instance v4, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$6;

    const-string v7, "timedEvent"

    invoke-direct {v4, p0, v13}, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen$6;-><init>(Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;Ljava/lang/String;)V

    .line 391
    .local v4, timedEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    iget-object v7, p0, Lti/modules/titanium/analytics/AnalyticsModuleBindingGen;->bindings:Ljava/util/HashMap;

    const-string v8, "timedEvent"

    invoke-virtual {v7, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v4

    .line 392
    goto/16 :goto_0

    .line 396
    .end local v4           #timedEvent_method:Lorg/appcelerator/kroll/KrollMethod;
    :cond_6
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModuleBindingGen;->getBinding(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const-string v0, "ti.modules.titanium.analytics.AnalyticsModule"

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
    .line 420
    const-class v0, Lti/modules/titanium/analytics/AnalyticsModule;

    return-object v0
.end method

.method public getShortAPIName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    const-string v0, "Analytics"

    return-object v0
.end method

.method public isModule()Z
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public newInstance(Lorg/appcelerator/titanium/TiContext;)Lorg/appcelerator/kroll/KrollModule;
    .locals 1
    .parameter "context"

    .prologue
    .line 416
    new-instance v0, Lti/modules/titanium/analytics/AnalyticsModule;

    invoke-direct {v0, p1}, Lti/modules/titanium/analytics/AnalyticsModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    return-object v0
.end method

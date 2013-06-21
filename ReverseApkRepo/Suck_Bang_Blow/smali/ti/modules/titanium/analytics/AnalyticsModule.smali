.class public Lti/modules/titanium/analytics/AnalyticsModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "AnalyticsModule.java"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 22
    return-void
.end method


# virtual methods
.method public addEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 0
    .parameter "type"
    .end parameter
    .parameter "event"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 28
    return-void
.end method

.method public featureEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "event"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 64
    const-string v0, "app.feature"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 65
    return-void
.end method

.method protected localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 2
    .parameter "type"
    .parameter "event"
    .parameter "data"

    .prologue
    .line 31
    invoke-virtual {p0}, Lti/modules/titanium/analytics/AnalyticsModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getTiApp()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-static {p3}, Lorg/appcelerator/titanium/util/TiConvert;->toJSON(Lorg/appcelerator/kroll/KrollDict;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEventFactory;->createEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/appcelerator/titanium/TiApplication;->postAnalyticsEvent(Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;)V

    .line 32
    return-void
.end method

.method public navEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "from"
    .end parameter
    .parameter "to"
    .end parameter
    .parameter "event"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    const-string v3, "event"

    .line 39
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 40
    .local v0, payload:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v1, "to"

    invoke-virtual {v0, v1, p2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "event"

    invoke-virtual {v0, v3, p3}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "data"

    invoke-virtual {v0, v1, p4}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "app.nav"

    const-string v2, "event"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 46
    return-void
.end method

.method public settingsEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "event"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 69
    const-string v0, "app.settings"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 70
    return-void
.end method

.method public timedEvent(Ljava/lang/String;JJILorg/appcelerator/kroll/KrollDict;)V
    .locals 4
    .parameter "event"
    .end parameter
    .parameter "start"
    .end parameter
    .parameter "stop"
    .end parameter
    .parameter "duration"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    const-string v3, "event"

    .line 52
    new-instance v0, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v0}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    .line 53
    .local v0, payload:Lorg/appcelerator/kroll/KrollDict;
    const-string v1, "event"

    invoke-virtual {v0, v3, p1}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "start"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "stop"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "duration"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "data"

    invoke-virtual {v0, v1, p7}, Lorg/appcelerator/kroll/KrollDict;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "app.timed"

    const-string v2, "event"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 60
    return-void
.end method

.method public userEvent(Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V
    .locals 1
    .parameter "event"
    .end parameter
    .parameter "data"
        .annotation runtime Lorg/appcelerator/kroll/annotations/Kroll$argument;
            optional = true
        .end annotation
    .end parameter

    .prologue
    .line 74
    const-string v0, "app.user"

    invoke-virtual {p0, v0, p1, p2}, Lti/modules/titanium/analytics/AnalyticsModule;->localAddEvent(Ljava/lang/String;Ljava/lang/String;Lorg/appcelerator/kroll/KrollDict;)V

    .line 75
    return-void
.end method

.class public Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;
.super Ljava/lang/Object;
.source "TiAnalyticsEvent.java"


# static fields
.field private static final LCAT:Ljava/lang/String; = "TitaniumAnalyticsEvent"

.field private static isoDateFormatter:Ljava/text/SimpleDateFormat;

.field private static utc:Ljava/util/TimeZone;


# instance fields
.field private eventAppGuid:Ljava/lang/String;

.field private eventEvent:Ljava/lang/String;

.field private eventMid:Ljava/lang/String;

.field private eventPayload:Ljava/lang/String;

.field private eventSid:Ljava/lang/String;

.field private eventTimestamp:Ljava/lang/String;

.field private eventType:Ljava/lang/String;

.field private expandPayload:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "utc"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    .line 39
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->utc:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 40
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v1, o:Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    invoke-direct {p0, p1, p2, v1}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1           #o:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 58
    .local v0, e:Lorg/json/JSONException;
    const-string v2, "TitaniumAnalyticsEvent"

    const-string v3, "Error packaging string."

    invoke-static {v2, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p1, p2, v2}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 65
    return-void
.end method

.method public static getTimestamp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->isoDateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .parameter "eventType"
    .parameter "eventEvent"
    .parameter "eventPayload"

    .prologue
    .line 68
    iput-object p1, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    .line 70
    invoke-static {}, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    .line 71
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    .line 72
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    .line 73
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAppInfo()Lorg/appcelerator/titanium/ITiAppInfo;

    move-result-object v0

    invoke-interface {v0}, Lorg/appcelerator/titanium/ITiAppInfo;->getGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    .line 74
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    .line 76
    return-void
.end method


# virtual methods
.method public getEventAppGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventAppGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventEvent:Ljava/lang/String;

    return-object v0
.end method

.method public getEventMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventMid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventSid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public mustExpandPayload()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/appcelerator/titanium/analytics/TiAnalyticsEvent;->expandPayload:Z

    return v0
.end method

.class public Lti/modules/titanium/android/PendingIntentProxy;
.super Lorg/appcelerator/kroll/KrollProxy;
.source "PendingIntentProxy.java"


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TiPendingIntent"


# instance fields
.field protected flags:I

.field protected intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

.field protected pendingIntent:Landroid/app/PendingIntent;

.field protected pendingIntentContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/android/PendingIntentProxy;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V
    .locals 4
    .parameter "createdInModule"
    .parameter "args"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    array-length v0, p2

    if-lt v0, v2, :cond_0

    aget-object v0, p2, v3

    instance-of v0, v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    if-eqz v0, :cond_0

    .line 43
    aget-object v0, p2, v3

    check-cast v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 44
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 45
    aget-object v0, p2, v2

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toInt(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    .line 49
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationArgs(Lorg/appcelerator/kroll/KrollModule;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 52
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->context:Lorg/appcelerator/titanium/TiContext;

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->context:Lorg/appcelerator/titanium/TiContext;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getRootActivity()Lorg/appcelerator/titanium/TiRootActivity;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 55
    :cond_1
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->context:Lorg/appcelerator/titanium/TiContext;

    if-nez v0, :cond_2

    .line 56
    invoke-static {}, Lorg/appcelerator/titanium/TiApplication;->getInstance()Lorg/appcelerator/titanium/TiApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    .line 58
    :cond_2
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    if-nez v0, :cond_4

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Creation arguments must contain intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_4
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 73
    :pswitch_2
    iget-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntentContext:Landroid/content/Context;

    iget-object v1, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    invoke-virtual {v1}, Lorg/appcelerator/titanium/proxy/IntentProxy;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget v2, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->pendingIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V
    .locals 3
    .parameter "dict"

    .prologue
    const-string v2, "intent"

    const-string v1, "flags"

    .line 82
    const-string v0, "intent"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "intent"

    invoke-virtual {p1, v2}, Lorg/appcelerator/kroll/KrollDict;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/appcelerator/titanium/proxy/IntentProxy;

    iput-object v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->intent:Lorg/appcelerator/titanium/proxy/IntentProxy;

    .line 85
    :cond_0
    const-string v0, "flags"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "flags"

    invoke-virtual {p1, v1}, Lorg/appcelerator/kroll/KrollDict;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lti/modules/titanium/android/PendingIntentProxy;->flags:I

    .line 88
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollProxy;->handleCreationDict(Lorg/appcelerator/kroll/KrollDict;)V

    .line 89
    return-void
.end method

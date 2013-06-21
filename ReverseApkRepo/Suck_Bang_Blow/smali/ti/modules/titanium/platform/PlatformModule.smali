.class public Lti/modules/titanium/platform/PlatformModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "PlatformModule.java"


# static fields
.field public static BATTERY_STATE_CHARGING:I = 0x0

.field public static BATTERY_STATE_FULL:I = 0x0

.field public static BATTERY_STATE_UNKNOWN:I = 0x0

.field public static BATTERY_STATE_UNPLUGGED:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "PlatformModule"


# instance fields
.field protected batteryLevel:D

.field protected batteryState:I

.field protected batteryStateReady:Z

.field protected batteryStateReceiver:Landroid/content/BroadcastReceiver;

.field protected displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    .line 34
    const/4 v0, 0x0

    sput v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNKNOWN:I

    .line 35
    const/4 v0, 0x1

    sput v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNPLUGGED:I

    .line 36
    const/4 v0, 0x2

    sput v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_CHARGING:I

    .line 37
    const/4 v0, 0x3

    sput v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_FULL:I

    return-void
.end method

.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 51
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->eventManager:Lorg/appcelerator/kroll/KrollEventManager;

    invoke-virtual {v0, p0}, Lorg/appcelerator/kroll/KrollEventManager;->addOnEventChangeListener(Lorg/appcelerator/titanium/bridge/OnEventListenerChange;)V

    .line 52
    sget v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNKNOWN:I

    iput v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    .line 53
    const-wide/high16 v0, -0x4010

    iput-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    .line 54
    return-void
.end method

.method static synthetic access$000(Lti/modules/titanium/platform/PlatformModule;II)D
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryLevel(II)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lti/modules/titanium/platform/PlatformModule;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lti/modules/titanium/platform/PlatformModule;->convertBatteryStatus(I)I

    move-result v0

    return v0
.end method

.method private convertBatteryLevel(II)D
    .locals 3
    .parameter "level"
    .parameter "scale"

    .prologue
    .line 242
    const/4 v0, -0x1

    .line 243
    .local v0, l:I
    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    .line 244
    mul-int/lit8 v1, p1, 0x64

    div-int v0, v1, p2

    .line 246
    :cond_0
    int-to-double v1, v0

    return-wide v1
.end method

.method private convertBatteryStatus(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 221
    sget v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNKNOWN:I

    .line 222
    .local v0, state:I
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return v0

    .line 224
    :pswitch_0
    sget v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_CHARGING:I

    .line 225
    goto :goto_0

    .line 228
    :pswitch_1
    sget v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_FULL:I

    .line 229
    goto :goto_0

    .line 233
    :pswitch_2
    sget v0, Lti/modules/titanium/platform/PlatformModule;->BATTERY_STATE_UNPLUGGED:I

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .parameter "batteryReceiver"

    .prologue
    .line 251
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, a:Landroid/app/Activity;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 253
    .local v1, batteryFilter:Landroid/content/IntentFilter;
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    return-void
.end method


# virtual methods
.method public createUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->createUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getIpAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableMemory()D
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getAvailableMemory()D

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryLevel()D
    .locals 2

    .prologue
    .line 175
    iget-wide v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryLevel:D

    return-wide v0
.end method

.method public getBatteryState()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryState:I

    return v0
.end method

.method public getDisplayCaps()Lti/modules/titanium/platform/DisplayCapsProxy;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lti/modules/titanium/platform/DisplayCapsProxy;

    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lti/modules/titanium/platform/DisplayCapsProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    .line 76
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->displayCaps:Lti/modules/titanium/platform/DisplayCapsProxy;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMobileId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacaddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getMacaddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetmask()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getNetmask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOstype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getOstype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorCount()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getProcessorCount()I

    move-result v0

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lorg/appcelerator/titanium/util/TiPlatformHelper;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listenerAdded(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 206
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 207
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 209
    :cond_0
    return-void
.end method

.method public listenerRemoved(Ljava/lang/String;ILorg/appcelerator/kroll/KrollProxy;)V
    .locals 1
    .parameter "type"
    .parameter "count"
    .parameter "proxy"

    .prologue
    .line 214
    const-string v0, "battery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 217
    :cond_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 280
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onDestroy(Landroid/app/Activity;)V

    .line 281
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 271
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onPause(Landroid/app/Activity;)V

    .line 272
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    .line 275
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lorg/appcelerator/kroll/KrollModule;->onResume(Landroid/app/Activity;)V

    .line 260
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 261
    sget-boolean v0, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "PlatformModule"

    const-string v1, "Reregistering battery changed receiver"

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    :cond_1
    return-void
.end method

.method public openURL(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    const-string v5, "PlatformModule"

    .line 132
    sget-boolean v3, Lti/modules/titanium/platform/PlatformModule;->DBG:Z

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "PlatformModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launching viewer for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 136
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const/4 v3, 0x1

    .line 143
    :goto_0
    return v3

    .line 140
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 141
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "PlatformModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v0}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected registerBatteryStateReceiver()V
    .locals 1

    .prologue
    .line 180
    new-instance v0, Lti/modules/titanium/platform/PlatformModule$1;

    invoke-direct {v0, p0}, Lti/modules/titanium/platform/PlatformModule$1;-><init>(Lti/modules/titanium/platform/PlatformModule;)V

    iput-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    .line 195
    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    return-void
.end method

.method public setBatteryMonitoring(Z)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 159
    if-eqz p1, :cond_1

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 160
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->registerBatteryStateReceiver()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->unregisterBatteryStateReceiver()V

    goto :goto_0
.end method

.method protected unregisterBatteryStateReceiver()V
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lti/modules/titanium/platform/PlatformModule;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/platform/PlatformModule;->batteryStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 201
    return-void
.end method

.class public Lbackport/android/bluetooth/BluetoothIntentRedirector;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectRequestedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondNoneConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondingConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$ClassChangedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryStartedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$LocalNameChangedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;,
        Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_STATE_OFF:I = 0x0

.field public static final BLUETOOTH_STATE_ON:I = 0x2

.field public static final BLUETOOTH_STATE_TURNING_OFF:I = 0x3

.field public static final BLUETOOTH_STATE_TURNING_ON:I = 0x1

.field public static final BOND_BONDED:I = 0x1

.field public static final BOND_BONDING:I = 0x2

.field public static final BOND_NOT_BONDED:I = 0x0

.field private static final CONVERTERS:[Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter; = null

.field public static final RESULT_FAILURE:I = -0x1

.field public static final RESULT_SUCCESS:I = 0x0

.field public static final SCAN_MODE_CONNECTABLE:I = 0x1

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x3

.field public static final SCAN_MODE_NONE:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const-class v1, Lbackport/android/bluetooth/BluetoothIntentRedirector;

    .line 31
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 30
    sput-object v1, Lbackport/android/bluetooth/BluetoothIntentRedirector;->TAG:Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, temp:Ljava/util/List;,"Ljava/util/List<Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;>;"
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryStartedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryStartedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryStartedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$LocalNameChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$LocalNameChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$LocalNameChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ScanModeChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$StateChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$AclConnectedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectRequestedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectRequestedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$AclDisconnectRequestedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondingConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondingConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondingConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondNoneConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondNoneConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$BondStateChangedBondNoneConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$ClassChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ClassChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ClassChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$FoundConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    new-instance v1, Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;

    invoke-direct {v1, v2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$NameChangedConverter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #temp:Ljava/util/List;,"Ljava/util/List<Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;>;"
    check-cast v0, [Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;

    sput-object v0, Lbackport/android/bluetooth/BluetoothIntentRedirector;->CONVERTERS:[Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 482
    sget-object v6, Lbackport/android/bluetooth/BluetoothIntentRedirector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "receive:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 485
    .local v1, convertedIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .local v3, i:I
    sget-object v6, Lbackport/android/bluetooth/BluetoothIntentRedirector;->CONVERTERS:[Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;

    array-length v5, v6

    .local v5, size:I
    :goto_0
    if-lt v3, v5, :cond_0

    .line 510
    :goto_1
    return-void

    .line 486
    :cond_0
    sget-object v6, Lbackport/android/bluetooth/BluetoothIntentRedirector;->CONVERTERS:[Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;

    aget-object v2, v6, v3

    .line 488
    .local v2, converter:Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;
    invoke-interface {v2, p2, v1}, Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;->convertIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    .line 490
    .local v0, converted:Z
    if-eqz v0, :cond_2

    .line 492
    invoke-static {}, Lbackport/android/bluetooth/BackportProperties;->getPermissionName()Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, perm:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 495
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 506
    :goto_2
    sget-object v6, Lbackport/android/bluetooth/BluetoothIntentRedirector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "redirect:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 499
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 485
    .end local v4           #perm:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

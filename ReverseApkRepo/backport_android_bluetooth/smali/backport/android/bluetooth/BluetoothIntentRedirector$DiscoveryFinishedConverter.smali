.class final Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;
.super Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.source "BluetoothIntentRedirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiscoveryFinishedConverter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$DiscoveryFinishedConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    return-object v0
.end method

.method protected hasResponsibility(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 83
    const-string v0, "android.bluetooth.intent.action.DISCOVERY_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

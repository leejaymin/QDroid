.class abstract Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;
.super Ljava/lang/Object;
.source "BluetoothIntentRedirector.java"

# interfaces
.implements Lbackport/android/bluetooth/BluetoothIntentRedirector$Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbackport/android/bluetooth/BluetoothIntentRedirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ConverterTemplate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    invoke-direct {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertIntent(Landroid/content/Intent;Landroid/content/Intent;)Z
    .locals 2
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->hasResponsibility(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 65
    :goto_0
    return v1

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 65
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected convertIntentInternal(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 73
    invoke-virtual {p0}, Lbackport/android/bluetooth/BluetoothIntentRedirector$ConverterTemplate;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method protected abstract getAction()Ljava/lang/String;
.end method

.method protected abstract hasResponsibility(Ljava/lang/String;)Z
.end method

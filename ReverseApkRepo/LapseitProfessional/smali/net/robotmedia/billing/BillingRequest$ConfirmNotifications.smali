.class public Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;
.super Lnet/robotmedia/billing/BillingRequest;
.source "BillingRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/robotmedia/billing/BillingRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmNotifications"
.end annotation


# static fields
.field private static final KEY_NOTIFY_IDS:Ljava/lang/String; = "NOTIFY_IDS"


# instance fields
.field private notifyIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"
    .parameter "startId"
    .parameter "notifyIds"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lnet/robotmedia/billing/BillingRequest;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;->notifyIds:[Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method protected addParams(Landroid/os/Bundle;)V
    .locals 2
    .parameter "request"

    .prologue
    .line 58
    const-string v0, "NOTIFY_IDS"

    iget-object v1, p0, Lnet/robotmedia/billing/BillingRequest$ConfirmNotifications;->notifyIds:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "CONFIRM_NOTIFICATIONS"

    return-object v0
.end method

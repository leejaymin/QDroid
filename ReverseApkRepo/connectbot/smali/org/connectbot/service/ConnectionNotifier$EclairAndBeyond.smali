.class Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;
.super Lorg/connectbot/service/ConnectionNotifier;
.source "ConnectionNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/ConnectionNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EclairAndBeyond"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/connectbot/service/ConnectionNotifier;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    invoke-direct {p0}, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;-><init>()V

    return-void
.end method


# virtual methods
.method public hideRunningNotification(Landroid/app/Service;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 190
    return-void
.end method

.method public showRunningNotification(Landroid/app/Service;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;->newRunningNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 185
    return-void
.end method

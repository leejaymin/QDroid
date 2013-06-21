.class public abstract Lcom/kaf/sound/ISound;
.super Ljava/lang/Object;
.source "ISound.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SetContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    return-void
.end method

.method public setBeepSound(II)Z
    .locals 1
    .parameter "frequency"
    .parameter "duration"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultRingtone(Ljava/lang/String;)Z
    .locals 1
    .parameter "contentsID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaf/GeneralException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 10
    const/4 v0, 0x0

    return v0
.end method

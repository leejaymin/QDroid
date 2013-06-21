.class public Lcom/rookiestudio/baseclass/TResultReceiver;
.super Landroid/os/ResultReceiver;
.source "TResultReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TResultReceiver"


# instance fields
.field private mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 13
    return-void
.end method


# virtual methods
.method public clearReceiver()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/baseclass/TResultReceiver;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;

    .line 17
    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/rookiestudio/baseclass/TResultReceiver;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/rookiestudio/baseclass/TResultReceiver;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;

    invoke-interface {v0, p1, p2}, Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v0, "TResultReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dropping result on floor for code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setReceiver(Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;)V
    .locals 0
    .parameter "receiver"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/rookiestudio/baseclass/TResultReceiver;->mReceiver:Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;

    .line 21
    return-void
.end method

.class public interface abstract Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
.super Ljava/lang/Object;
.source "ScoreloopManagerSingleton.java"

# interfaces
.implements Lcom/scoreloop/client/android/ui/ScoreloopManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Impl"
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;
.end method

.method public abstract getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;
.end method

.method public abstract getLastSubmitStatus()I
.end method

.method public abstract getLastSubmittedChallenge()Lcom/scoreloop/client/android/core/model/Challenge;
.end method

.method public abstract getLastSubmittedScore()Lcom/scoreloop/client/android/core/model/Score;
.end method

.method public abstract getSession()Lcom/scoreloop/client/android/core/model/Session;
.end method

.method public abstract init(Landroid/content/Context;Ljava/lang/String;)V
.end method

.class public Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;
.super Ljava/lang/Object;
.source "ScoreloopManagerSingleton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
    }
.end annotation


# static fields
.field private static _singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    invoke-interface {v0}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->destroy()V

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    .line 73
    :cond_0
    return-void
.end method

.method public static get()Lcom/scoreloop/client/android/ui/ScoreloopManager;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScoreloopManagerSingleton.init() must be called first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    return-object v0
.end method

.method static getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)Lcom/scoreloop/client/android/ui/ScoreloopManager;
    .locals 4
    .parameter "context"
    .parameter "gameSecret"

    .prologue
    .line 101
    sget-object v1, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ScoreloopManagerSingleton.init() can be called only once"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_0
    :try_start_0
    const-string v1, "com.scoreloop.client.android.ui.manager.StandardScoreloopManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    sput-object v1, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    .line 108
    sget-object v1, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    invoke-interface {v1, p0, p1}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    sget-object v1, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    return-object v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScoreloopManagerSingleton.init() failed to instantiate ScoreloopManager implementation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static init(Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;)Lcom/scoreloop/client/android/ui/ScoreloopManager;
    .locals 2
    .parameter "manager"

    .prologue
    .line 126
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    if-eqz v0, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScoreloopManagerSingleton.init() can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    sput-object p0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    .line 130
    sget-object v0, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    return-object v0
.end method

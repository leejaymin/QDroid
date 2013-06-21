.class public abstract Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;
.super Ljava/lang/Object;
.source "ScreenManagerSingleton.java"


# static fields
.field private static _singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    .line 35
    return-void
.end method

.method public static get()Lcom/scoreloop/client/android/ui/framework/ScreenManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you have to init the screen-manager-singleton first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    return-object v0
.end method

.method public static init(Lcom/scoreloop/client/android/ui/framework/ScreenManager;)V
    .locals 2
    .parameter "manager"

    .prologue
    .line 45
    sget-object v0, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScreenManagerSingleton.init() can be called only once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    sput-object p0, Lcom/scoreloop/client/android/ui/framework/ScreenManagerSingleton;->_singleton:Lcom/scoreloop/client/android/ui/framework/ScreenManager;

    .line 49
    return-void
.end method

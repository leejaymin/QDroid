.class Lcom/adfonic/android/view/AdLifeCycleListenerManager$5;
.super Ljava/lang/Object;
.source "AdLifeCycleListenerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/view/AdLifeCycleListenerManager;->onDismissScreen(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/AdLifeCycleListenerManager;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/AdLifeCycleListenerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$5;->this$0:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/adfonic/android/view/AdLifeCycleListenerManager$5;->this$0:Lcom/adfonic/android/view/AdLifeCycleListenerManager;

    invoke-virtual {v0}, Lcom/adfonic/android/view/AdLifeCycleListenerManager;->getAdListener()Lcom/adfonic/android/AdListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adfonic/android/AdListener;->onDismissScreen()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    goto :goto_0
.end method

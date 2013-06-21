.class Lorg/tf/BrowserActivity$1;
.super Ljava/lang/Thread;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/BrowserActivity;->startLoading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/BrowserActivity;


# direct methods
.method constructor <init>(Lorg/tf/BrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    .line 221
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    invoke-static {}, Lorg/tf/Config;->getBuiltinSongsPath()Ljava/io/File;

    move-result-object v1

    #calls: Lorg/tf/BrowserActivity;->loadBuiltinSongs(Ljava/io/File;)V
    invoke-static {v0, v1}, Lorg/tf/BrowserActivity;->access$3(Lorg/tf/BrowserActivity;Ljava/io/File;)V

    .line 224
    iget-object v0, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    #calls: Lorg/tf/BrowserActivity;->checkLoadingStopped()Z
    invoke-static {v0}, Lorg/tf/BrowserActivity;->access$4(Lorg/tf/BrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    invoke-static {}, Lorg/tf/Config;->getSongsPath()Ljava/io/File;

    move-result-object v1

    #calls: Lorg/tf/BrowserActivity;->loadSongs(Ljava/io/File;)V
    invoke-static {v0, v1}, Lorg/tf/BrowserActivity;->access$5(Lorg/tf/BrowserActivity;Ljava/io/File;)V

    .line 227
    :cond_0
    iget-object v0, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    #calls: Lorg/tf/BrowserActivity;->checkLoadingStopped()Z
    invoke-static {v0}, Lorg/tf/BrowserActivity;->access$4(Lorg/tf/BrowserActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 233
    iget-object v0, p0, Lorg/tf/BrowserActivity$1;->this$0:Lorg/tf/BrowserActivity;

    #calls: Lorg/tf/BrowserActivity;->reportLoadingFinished()V
    invoke-static {v0}, Lorg/tf/BrowserActivity;->access$6(Lorg/tf/BrowserActivity;)V

    .line 235
    :cond_1
    return-void
.end method

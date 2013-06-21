.class Lkr/co/medinbiz/widget/ultra/UltraMenu$6;
.super Ljava/lang/Thread;
.source "UltraMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMenu;->showMovieList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 158
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v2, v2, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lkr/co/medinbiz/helper/HttpManager;->videoList(Ljava/lang/String;I)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v1

    #setter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$13(Lkr/co/medinbiz/widget/ultra/UltraMenu;Lkr/co/medinbiz/dto/VideoList;)V

    .line 159
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 160
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/VideoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/VideoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 162
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/VideoList;->getDiffcount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    .line 166
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 168
    :cond_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 173
    :cond_3
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$6;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

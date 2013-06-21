.class Lkr/co/medinbiz/widget/ultra/UltraMenu$5;
.super Ljava/lang/Thread;
.source "UltraMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMenu;->showPhotoList()V
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    new-instance v1, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    iget-object v2, v2, Lkr/co/medinbiz/widget/ultra/UltraMenu;->mMNum:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lkr/co/medinbiz/helper/HttpManager;->photoList(Ljava/lang/String;I)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v1

    #setter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$11(Lkr/co/medinbiz/widget/ultra/UltraMenu;Lkr/co/medinbiz/dto/PhotoList;)V

    .line 132
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 147
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMenu$5;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMenu;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMenu;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMenu;->access$12(Lkr/co/medinbiz/widget/ultra/UltraMenu;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

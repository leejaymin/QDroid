.class Lkr/co/medinbiz/widget/ultra/PhotoView$5;
.super Ljava/lang/Thread;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;->getPhotoList(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

.field private final synthetic val$aCurrentPage:I

.field private final synthetic val$aMNum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    iput-object p2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->val$aMNum:Ljava/lang/String;

    iput p3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->val$aCurrentPage:I

    .line 238
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 241
    new-instance v2, Lkr/co/medinbiz/helper/HttpManager;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lkr/co/medinbiz/helper/HttpManager;-><init>(Landroid/content/Context;)V

    .line 242
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->val$aMNum:Ljava/lang/String;

    iget v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->val$aCurrentPage:I

    .line 241
    invoke-virtual {v2, v3, v4}, Lkr/co/medinbiz/helper/HttpManager;->photoList(Ljava/lang/String;I)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v0

    .line 243
    .local v0, lPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    if-eqz v0, :cond_2

    .line 244
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/PhotoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 249
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$8(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 258
    :goto_1
    return-void

    .line 244
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Ultra;

    .line 245
    .local v1, ul:Lkr/co/medinbiz/dto/Ultra;
    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mPhotoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoView;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    .end local v1           #ul:Lkr/co/medinbiz/dto/Ultra;
    :cond_1
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$8(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 255
    :cond_2
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$5;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$8(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

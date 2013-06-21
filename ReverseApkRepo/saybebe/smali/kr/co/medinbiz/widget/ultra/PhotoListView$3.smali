.class Lkr/co/medinbiz/widget/ultra/PhotoListView$3;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$2(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMNum:Ljava/lang/String;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$11(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Ljava/lang/String;

    move-result-object v4

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mTotalPage:I
    invoke-static {v6}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPhotoList:Lkr/co/medinbiz/dto/PhotoList;
    invoke-static {v6}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$9(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Lkr/co/medinbiz/dto/PhotoList;

    move-result-object v6

    invoke-virtual {v6}, Lkr/co/medinbiz/dto/PhotoList;->getTotalphoto()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 115
    invoke-virtual/range {v0 .. v7}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->gotPhotoActivty(Landroid/content/Context;Lkr/co/medinbiz/dto/PhotoList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

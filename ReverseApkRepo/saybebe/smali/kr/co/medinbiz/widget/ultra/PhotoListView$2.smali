.class Lkr/co/medinbiz/widget/ultra/PhotoListView$2;
.super Ljava/lang/Object;
.source "PhotoListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/PhotoList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$3(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    #setter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mPosition:I
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$10(Lkr/co/medinbiz/widget/ultra/PhotoListView;I)V

    .line 96
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mMNum:Ljava/lang/String;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$11(Lkr/co/medinbiz/widget/ultra/PhotoListView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/PhotoListView$2;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$2(Lkr/co/medinbiz/widget/ultra/PhotoListView;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    #setter for: Lkr/co/medinbiz/widget/ultra/PhotoListView;->mCurrentPage:I
    invoke-static {v2, v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$12(Lkr/co/medinbiz/widget/ultra/PhotoListView;I)V

    #calls: Lkr/co/medinbiz/widget/ultra/PhotoListView;->getPhotoList(Ljava/lang/String;I)V
    invoke-static {v0, v1, v3}, Lkr/co/medinbiz/widget/ultra/PhotoListView;->access$13(Lkr/co/medinbiz/widget/ultra/PhotoListView;Ljava/lang/String;I)V

    .line 97
    return-void
.end method

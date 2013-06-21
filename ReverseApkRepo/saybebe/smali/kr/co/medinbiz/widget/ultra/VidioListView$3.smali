.class Lkr/co/medinbiz/widget/ultra/VidioListView$3;
.super Ljava/lang/Object;
.source "VidioListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/VidioListView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkr/co/medinbiz/dto/VideoList;)V
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
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 127
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mVideoList:Lkr/co/medinbiz/dto/VideoList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$9(Lkr/co/medinbiz/widget/ultra/VidioListView;)Lkr/co/medinbiz/dto/VideoList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/VideoList;->getUltras()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Ultra;

    .line 128
    .local v0, movie:Lkr/co/medinbiz/dto/Ultra;
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/VidioListView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioListView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioListView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/VidioListView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioListView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Ultra;->getMp4Url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Ultra;->getDate()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Ultra;->getPlace()Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-virtual {v1, v2, v3, v4, v5}, Lkr/co/medinbiz/widget/ultra/VidioListView;->gotVideoActivty(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.class Lkr/co/medinbiz/widget/ultra/VidioView$3;
.super Ljava/lang/Object;
.source "VidioView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/VidioView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/VidioView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/VidioView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/16 v2, 0x8

    .line 81
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 82
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 86
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/VidioView$3;->this$0:Lkr/co/medinbiz/widget/ultra/VidioView;

    #getter for: Lkr/co/medinbiz/widget/ultra/VidioView;->vvcCtrlBar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/VidioView;->access$5(Lkr/co/medinbiz/widget/ultra/VidioView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

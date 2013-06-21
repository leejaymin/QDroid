.class Lkr/co/medinbiz/widget/ultra/PhotoView$4;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$4;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 159
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$4;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    #calls: Lkr/co/medinbiz/widget/ultra/PhotoView;->login()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$7(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    .line 161
    return-void
.end method

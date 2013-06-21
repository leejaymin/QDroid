.class Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$2;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->onComplete(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$2;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 497
    sget-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->faceDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 498
    return-void
.end method

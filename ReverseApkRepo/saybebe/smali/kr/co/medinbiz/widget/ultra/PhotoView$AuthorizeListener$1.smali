.class Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 484
    sget-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->fEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 485
    sget-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->fEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkr/co/medinbiz/widget/ultra/PhotoView;->fMsg:Ljava/lang/String;

    .line 486
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->access$0(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)Lkr/co/medinbiz/widget/ultra/PhotoView;

    move-result-object v0

    #calls: Lkr/co/medinbiz/widget/ultra/PhotoView;->feed()V
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$5(Lkr/co/medinbiz/widget/ultra/PhotoView;)V

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->access$0(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)Lkr/co/medinbiz/widget/ultra/PhotoView;

    move-result-object v0

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener$1;->this$1:Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;->access$0(Lkr/co/medinbiz/widget/ultra/PhotoView$AuthorizeListener;)Lkr/co/medinbiz/widget/ultra/PhotoView;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$1(Lkr/co/medinbiz/widget/ultra/PhotoView;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->facebook_no_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    const/4 v2, 0x1

    .line 488
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

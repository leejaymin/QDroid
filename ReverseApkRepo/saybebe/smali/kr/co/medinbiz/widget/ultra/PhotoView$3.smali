.class Lkr/co/medinbiz/widget/ultra/PhotoView$3;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/PhotoView;->showAlert(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 100
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/PhotoView$3;->this$0:Lkr/co/medinbiz/widget/ultra/PhotoView;

    const/4 v1, 0x0

    #setter for: Lkr/co/medinbiz/widget/ultra/PhotoView;->showingAlert:Z
    invoke-static {v0, v1}, Lkr/co/medinbiz/widget/ultra/PhotoView;->access$6(Lkr/co/medinbiz/widget/ultra/PhotoView;Z)V

    .line 101
    return-void
.end method

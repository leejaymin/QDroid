.class Lkr/co/medinbiz/widget/main/MainWidget$2;
.super Ljava/lang/Object;
.source "MainWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/main/MainWidget;->openNotice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/main/MainWidget;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/main/MainWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/main/MainWidget$2;->this$0:Lkr/co/medinbiz/widget/main/MainWidget;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    iget-object v0, p0, Lkr/co/medinbiz/widget/main/MainWidget$2;->this$0:Lkr/co/medinbiz/widget/main/MainWidget;

    #getter for: Lkr/co/medinbiz/widget/main/MainWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/main/MainWidget;->access$1(Lkr/co/medinbiz/widget/main/MainWidget;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    return-void
.end method

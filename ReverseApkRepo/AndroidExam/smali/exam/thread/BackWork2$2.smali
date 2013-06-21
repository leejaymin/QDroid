.class Lexam/thread/BackWork2$2;
.super Ljava/lang/Object;
.source "BackWork2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexam/thread/BackWork2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lexam/thread/BackWork2;


# direct methods
.method constructor <init>(Lexam/thread/BackWork2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lexam/thread/BackWork2$2;)Lexam/thread/BackWork2;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 23
    const/4 v1, 0x0

    .local v1, start:I
    const/16 v0, 0x64

    .line 25
    .local v0, end:I
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    new-instance v3, Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    .line 26
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 27
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    const-string v3, "Calculating"

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    const-string v3, "Wait..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 29
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 30
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    const-string v3, "Cancel"

    new-instance v4, Lexam/thread/BackWork2$2$1;

    invoke-direct {v4, p0}, Lexam/thread/BackWork2$2$1;-><init>(Lexam/thread/BackWork2$2;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 36
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 38
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    new-instance v3, Lexam/thread/BackWork2$AccumThread;

    iget-object v4, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v5, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v5, v5, Lexam/thread/BackWork2;->mAfterAccum:Landroid/os/Handler;

    invoke-direct {v3, v4, v1, v0, v5}, Lexam/thread/BackWork2$AccumThread;-><init>(Lexam/thread/BackWork2;IILandroid/os/Handler;)V

    iput-object v3, v2, Lexam/thread/BackWork2;->mThread:Lexam/thread/BackWork2$AccumThread;

    .line 39
    iget-object v2, p0, Lexam/thread/BackWork2$2;->this$0:Lexam/thread/BackWork2;

    iget-object v2, v2, Lexam/thread/BackWork2;->mThread:Lexam/thread/BackWork2$AccumThread;

    invoke-virtual {v2}, Lexam/thread/BackWork2$AccumThread;->start()V

    .line 40
    return-void
.end method

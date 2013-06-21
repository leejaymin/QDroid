.class final Lorg/theb/ssh/SecureShell$1;
.super Ljava/lang/Object;
.source "SecureShell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/theb/ssh/SecureShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/theb/ssh/SecureShell;


# direct methods
.method constructor <init>(Lorg/theb/ssh/SecureShell;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 131
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->mIsWaiting:Z
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$0(Lorg/theb/ssh/SecureShell;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-nez v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    iget-object v1, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    iget-object v2, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->mWaitingTitle:Ljava/lang/String;
    invoke-static {v2}, Lorg/theb/ssh/SecureShell;->access$2(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->mWaitingMessage:Ljava/lang/String;
    invoke-static {v3}, Lorg/theb/ssh/SecureShell;->access$3(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/theb/ssh/SecureShell;->access$4(Lorg/theb/ssh/SecureShell;Landroid/app/ProgressDialog;)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->mWaitingTitle:Ljava/lang/String;
    invoke-static {v1}, Lorg/theb/ssh/SecureShell;->access$2(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->mWaitingMessage:Ljava/lang/String;
    invoke-static {v1}, Lorg/theb/ssh/SecureShell;->access$3(Lorg/theb/ssh/SecureShell;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    #getter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lorg/theb/ssh/SecureShell;->access$1(Lorg/theb/ssh/SecureShell;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 141
    iget-object v0, p0, Lorg/theb/ssh/SecureShell$1;->this$0:Lorg/theb/ssh/SecureShell;

    const/4 v1, 0x0

    #setter for: Lorg/theb/ssh/SecureShell;->progress:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lorg/theb/ssh/SecureShell;->access$4(Lorg/theb/ssh/SecureShell;Landroid/app/ProgressDialog;)V

    goto :goto_0
.end method

.class Lorg/connectbot/PubkeyListActivity$10$1;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity$10;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/PubkeyListActivity$10;

.field private final synthetic val$changePasswordView:Landroid/view/View;

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity$10;Landroid/view/View;Lorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$changePasswordView:Landroid/view/View;

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v8, 0x0

    const v7, 0x104000a

    .line 393
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$changePasswordView:Landroid/view/View;

    const v5, 0x7f0b0023

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, oldPassword:Ljava/lang/String;
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$changePasswordView:Landroid/view/View;

    const v5, 0x7f0b0016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, password1:Ljava/lang/String;
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$changePasswordView:Landroid/view/View;

    const v5, 0x7f0b0017

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    .local v3, password2:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 398
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    #getter for: Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v5}, Lorg/connectbot/PubkeyListActivity$10;->access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 399
    const v5, 0x7f08003c

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 400
    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 401
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 422
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v4, v1, v2}, Lorg/connectbot/bean/PubkeyBean;->changePassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    #getter for: Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v5}, Lorg/connectbot/PubkeyListActivity$10;->access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 408
    const v5, 0x7f08003d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 409
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 410
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ConnectBot.PubkeyListActivity"

    const-string v5, "Could not change private key password"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    #getter for: Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v5}, Lorg/connectbot/PubkeyListActivity$10;->access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 418
    const v5, 0x7f08003e

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 419
    invoke-virtual {v4, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 420
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    #getter for: Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v4}, Lorg/connectbot/PubkeyListActivity$10;->access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$10$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v4, v5}, Lorg/connectbot/util/PubkeyDatabase;->savePubkey(Lorg/connectbot/bean/PubkeyBean;)Lorg/connectbot/bean/PubkeyBean;

    .line 413
    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10$1;->this$1:Lorg/connectbot/PubkeyListActivity$10;

    #getter for: Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v4}, Lorg/connectbot/PubkeyListActivity$10;->access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v4

    iget-object v4, v4, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

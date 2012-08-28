.class Lorg/connectbot/PubkeyListActivity$10;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$10;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PubkeyListActivity$10;)Lorg/connectbot/PubkeyListActivity;
    .locals 1
    .parameter

    .prologue
    .line 384
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 386
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v1, v1, Lorg/connectbot/PubkeyListActivity;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030009

    invoke-virtual {v1, v3, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 387
    .local v0, changePasswordView:Landroid/view/View;
    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 388
    iget-object v3, p0, Lorg/connectbot/PubkeyListActivity$10;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v3}, Lorg/connectbot/bean/PubkeyBean;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 389
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$10;->this$0:Lorg/connectbot/PubkeyListActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 391
    const v2, 0x7f080041

    new-instance v3, Lorg/connectbot/PubkeyListActivity$10$1;

    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$10;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v3, p0, v0, v4}, Lorg/connectbot/PubkeyListActivity$10$1;-><init>(Lorg/connectbot/PubkeyListActivity$10;Landroid/view/View;Lorg/connectbot/bean/PubkeyBean;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 424
    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 426
    const/4 v1, 0x1

    return v1

    .line 388
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

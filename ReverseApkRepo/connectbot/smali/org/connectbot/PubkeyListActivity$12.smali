.class Lorg/connectbot/PubkeyListActivity$12;
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

.field private final synthetic val$loaded:Z

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$12;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    iput-boolean p3, p0, Lorg/connectbot/PubkeyListActivity$12;->val$loaded:Z

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/PubkeyListActivity$12;)Lorg/connectbot/PubkeyListActivity;
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 448
    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;

    const v2, 0x7f0800b1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/connectbot/PubkeyListActivity$12;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v5}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/connectbot/PubkeyListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 449
    const v1, 0x7f0800b2

    new-instance v2, Lorg/connectbot/PubkeyListActivity$12$1;

    iget-boolean v3, p0, Lorg/connectbot/PubkeyListActivity$12;->val$loaded:Z

    iget-object v4, p0, Lorg/connectbot/PubkeyListActivity$12;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-direct {v2, p0, v3, v4}, Lorg/connectbot/PubkeyListActivity$12$1;-><init>(Lorg/connectbot/PubkeyListActivity$12;ZLorg/connectbot/bean/PubkeyBean;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 461
    const v1, 0x7f0800b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 463
    return v6
.end method

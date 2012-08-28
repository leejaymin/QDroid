.class Lorg/connectbot/HostListActivity$11;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;

.field private final synthetic val$bridge:Lorg/connectbot/service/TerminalBridge;

.field private final synthetic val$host:Lorg/connectbot/bean/HostBean;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/bean/HostBean;Lorg/connectbot/service/TerminalBridge;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;

    iput-object p2, p0, Lorg/connectbot/HostListActivity$11;->val$host:Lorg/connectbot/bean/HostBean;

    iput-object p3, p0, Lorg/connectbot/HostListActivity$11;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/HostListActivity$11;)Lorg/connectbot/HostListActivity;
    .locals 1
    .parameter

    .prologue
    .line 357
    iget-object v0, p0, Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x1

    .line 360
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 361
    iget-object v1, p0, Lorg/connectbot/HostListActivity$11;->this$0:Lorg/connectbot/HostListActivity;

    const v2, 0x7f0800b1

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/connectbot/HostListActivity$11;->val$host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v5}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/connectbot/HostListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 362
    const v1, 0x7f0800b2

    new-instance v2, Lorg/connectbot/HostListActivity$11$1;

    iget-object v3, p0, Lorg/connectbot/HostListActivity$11;->val$bridge:Lorg/connectbot/service/TerminalBridge;

    iget-object v4, p0, Lorg/connectbot/HostListActivity$11;->val$host:Lorg/connectbot/bean/HostBean;

    invoke-direct {v2, p0, v3, v4}, Lorg/connectbot/HostListActivity$11$1;-><init>(Lorg/connectbot/HostListActivity$11;Lorg/connectbot/service/TerminalBridge;Lorg/connectbot/bean/HostBean;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    const v1, 0x7f0800b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 374
    return v6
.end method

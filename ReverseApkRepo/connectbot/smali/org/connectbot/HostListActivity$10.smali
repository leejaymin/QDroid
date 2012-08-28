.class Lorg/connectbot/HostListActivity$10;
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

.field private final synthetic val$host:Lorg/connectbot/bean/HostBean;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;Lorg/connectbot/bean/HostBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$10;->this$0:Lorg/connectbot/HostListActivity;

    iput-object p2, p0, Lorg/connectbot/HostListActivity$10;->val$host:Lorg/connectbot/bean/HostBean;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 347
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/connectbot/HostListActivity$10;->this$0:Lorg/connectbot/HostListActivity;

    const-class v2, Lorg/connectbot/PortForwardListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 348
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    iget-object v2, p0, Lorg/connectbot/HostListActivity$10;->val$host:Lorg/connectbot/bean/HostBean;

    invoke-virtual {v2}, Lorg/connectbot/bean/HostBean;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lorg/connectbot/HostListActivity$10;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v1, v0, v4}, Lorg/connectbot/HostListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 350
    return v4
.end method

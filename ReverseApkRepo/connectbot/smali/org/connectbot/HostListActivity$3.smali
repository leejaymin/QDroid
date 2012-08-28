.class Lorg/connectbot/HostListActivity$3;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/Adapter;

    invoke-interface {v5, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/bean/HostBean;

    .line 188
    .local v1, host:Lorg/connectbot/bean/HostBean;
    invoke-virtual {v1}, Lorg/connectbot/bean/HostBean;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 190
    .local v4, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 191
    .local v0, contents:Landroid/content/Intent;
    const/high16 v5, 0x400

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 193
    iget-object v5, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    iget-boolean v5, v5, Lorg/connectbot/HostListActivity;->makingShortcut:Z

    if-eqz v5, :cond_0

    .line 195
    iget-object v5, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    const v6, 0x7f020007

    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 197
    .local v2, icon:Landroid/content/Intent$ShortcutIconResource;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 199
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1}, Lorg/connectbot/bean/HostBean;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 202
    iget-object v5, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v3}, Lorg/connectbot/HostListActivity;->setResult(ILandroid/content/Intent;)V

    .line 203
    iget-object v5, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v5}, Lorg/connectbot/HostListActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v2           #icon:Landroid/content/Intent$ShortcutIconResource;
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_0
    :try_start_1
    iget-object v5, p0, Lorg/connectbot/HostListActivity$3;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v5, v0}, Lorg/connectbot/HostListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    .end local v0           #contents:Landroid/content/Intent;
    .end local v1           #host:Lorg/connectbot/bean/HostBean;
    .end local v4           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

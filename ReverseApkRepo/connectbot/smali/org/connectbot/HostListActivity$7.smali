.class Lorg/connectbot/HostListActivity$7;
.super Ljava/lang/Object;
.source "HostListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$7;->this$0:Lorg/connectbot/HostListActivity;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 284
    iget-object v0, p0, Lorg/connectbot/HostListActivity$7;->this$0:Lorg/connectbot/HostListActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    .line 285
    iget-object v0, p0, Lorg/connectbot/HostListActivity$7;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v0}, Lorg/connectbot/HostListActivity;->updateList()V

    .line 286
    const/4 v0, 0x1

    return v0
.end method

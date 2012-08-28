.class Lorg/connectbot/HostListActivity$6;
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
    iput-object p1, p0, Lorg/connectbot/HostListActivity$6;->this$0:Lorg/connectbot/HostListActivity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 274
    iget-object v0, p0, Lorg/connectbot/HostListActivity$6;->this$0:Lorg/connectbot/HostListActivity;

    iput-boolean v1, v0, Lorg/connectbot/HostListActivity;->sortedByColor:Z

    .line 275
    iget-object v0, p0, Lorg/connectbot/HostListActivity$6;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v0}, Lorg/connectbot/HostListActivity;->updateList()V

    .line 276
    return v1
.end method

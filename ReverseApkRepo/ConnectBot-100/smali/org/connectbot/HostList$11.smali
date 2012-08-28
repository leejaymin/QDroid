.class final Lorg/connectbot/HostList$11;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$11;->this$0:Lorg/connectbot/HostList;

    iput p2, p0, Lorg/connectbot/HostList$11;->val$id:I

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 443
    iget-object v0, p0, Lorg/connectbot/HostList$11;->this$0:Lorg/connectbot/HostList;

    iget-object v0, v0, Lorg/connectbot/HostList;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget v1, p0, Lorg/connectbot/HostList$11;->val$id:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/connectbot/util/HostDatabase;->deleteHost(J)V

    .line 444
    iget-object v0, p0, Lorg/connectbot/HostList$11;->this$0:Lorg/connectbot/HostList;

    iget-object v0, v0, Lorg/connectbot/HostList;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 445
    const/4 v0, 0x0

    return v0
.end method

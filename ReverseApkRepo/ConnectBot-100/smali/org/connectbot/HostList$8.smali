.class final Lorg/connectbot/HostList$8;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$8;->this$0:Lorg/connectbot/HostList;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 357
    iget-object v0, p0, Lorg/connectbot/HostList$8;->this$0:Lorg/connectbot/HostList;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/connectbot/HostList;->sortedByColor:Z

    .line 358
    iget-object v0, p0, Lorg/connectbot/HostList$8;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

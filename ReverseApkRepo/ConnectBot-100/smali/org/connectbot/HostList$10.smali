.class final Lorg/connectbot/HostList$10;
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
    iput-object p1, p0, Lorg/connectbot/HostList$10;->this$0:Lorg/connectbot/HostList;

    iput p2, p0, Lorg/connectbot/HostList$10;->val$id:I

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 433
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/connectbot/HostList$10;->this$0:Lorg/connectbot/HostList;

    const-class v2, Lorg/connectbot/HostEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.TITLE"

    iget v2, p0, Lorg/connectbot/HostList$10;->val$id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 435
    iget-object v1, p0, Lorg/connectbot/HostList$10;->this$0:Lorg/connectbot/HostList;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/connectbot/HostList;->startActivityForResult(Landroid/content/Intent;I)V

    .line 436
    const/4 v1, 0x0

    return v1
.end method

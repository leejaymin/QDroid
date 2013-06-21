.class Lcom/wareone/tappmt/Asset$2;
.super Ljava/lang/Object;
.source "Asset.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Asset;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Asset;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Asset;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Asset$2;->this$0:Lcom/wareone/tappmt/Asset;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/Asset$2;->this$0:Lcom/wareone/tappmt/Asset;

    const-class v2, Lcom/wareone/tappmt/AccountEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .local v0, it:Landroid/content/Intent;
    const-string v1, "ACTION"

    const v2, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/wareone/tappmt/Asset$2;->this$0:Lcom/wareone/tappmt/Asset;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Asset;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method

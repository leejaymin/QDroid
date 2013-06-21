.class Lcom/wareone/tappmt/Income$1;
.super Ljava/lang/Object;
.source "Income.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/Income;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/Income;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/Income;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/Income$1;->this$0:Lcom/wareone/tappmt/Income;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/Income$1;->this$0:Lcom/wareone/tappmt/Income;

    const-class v2, Lcom/wareone/tappmt/CategoryEditor;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, it:Landroid/content/Intent;
    const-string v1, "ACTION"

    const v2, 0x7f09005b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "TYPE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Lcom/wareone/tappmt/Income$1;->this$0:Lcom/wareone/tappmt/Income;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/Income;->startActivity(Landroid/content/Intent;)V

    .line 66
    return-void
.end method

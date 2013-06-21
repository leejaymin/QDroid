.class Lcom/wareone/tappmt/ViewItems$1;
.super Ljava/lang/Object;
.source "ViewItems.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wareone/tappmt/ViewItems;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wareone/tappmt/ViewItems;


# direct methods
.method constructor <init>(Lcom/wareone/tappmt/ViewItems;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/wareone/tappmt/ViewItems$1;->this$0:Lcom/wareone/tappmt/ViewItems;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/wareone/tappmt/ViewItems$1;->this$0:Lcom/wareone/tappmt/ViewItems;

    const-class v2, Lcom/wareone/tappmt/Register;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, it:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wareone/tappmt/ViewItems$1;->this$0:Lcom/wareone/tappmt/ViewItems;

    invoke-virtual {v1, v0}, Lcom/wareone/tappmt/ViewItems;->startActivity(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

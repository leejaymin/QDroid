.class Lcom/addthis/ui/views/ATButton$1;
.super Ljava/lang/Object;
.source "ATButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/addthis/ui/views/ATButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/addthis/ui/views/ATButton;


# direct methods
.method constructor <init>(Lcom/addthis/ui/views/ATButton;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/addthis/ui/views/ATButton$1;->this$0:Lcom/addthis/ui/views/ATButton;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/addthis/ui/views/ATButton$1;->this$0:Lcom/addthis/ui/views/ATButton;

    #getter for: Lcom/addthis/ui/views/ATButton;->mItem:Lcom/addthis/models/ATShareItem;
    invoke-static {v0}, Lcom/addthis/ui/views/ATButton;->access$0(Lcom/addthis/ui/views/ATButton;)Lcom/addthis/models/ATShareItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/addthis/ui/views/ATButton$1;->this$0:Lcom/addthis/ui/views/ATButton;

    invoke-virtual {v0}, Lcom/addthis/ui/views/ATButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/addthis/ui/views/ATButton$1;->this$0:Lcom/addthis/ui/views/ATButton;

    #getter for: Lcom/addthis/ui/views/ATButton;->mItem:Lcom/addthis/models/ATShareItem;
    invoke-static {v1}, Lcom/addthis/ui/views/ATButton;->access$0(Lcom/addthis/ui/views/ATButton;)Lcom/addthis/models/ATShareItem;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/addthis/core/AddThis;->presentAddThisMenu(Landroid/content/Context;Lcom/addthis/models/ATShareItem;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "ATButton"

    const-string v1, "No share item present"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

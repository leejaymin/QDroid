.class Lcom/jellybus/fx/Activity_Main_Manual$3;
.super Ljava/lang/Object;
.source "Activity_Main_Manual.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main_Manual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main_Manual;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main_Manual;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    #getter for: Lcom/jellybus/fx/Activity_Main_Manual;->current_menu:I
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Manual;->access$0(Lcom/jellybus/fx/Activity_Main_Manual;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    #calls: Lcom/jellybus/fx/Activity_Main_Manual;->clearWebView()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Manual;->access$1(Lcom/jellybus/fx/Activity_Main_Manual;)V

    .line 123
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    #calls: Lcom/jellybus/fx/Activity_Main_Manual;->setOffMenu()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Manual;->access$2(Lcom/jellybus/fx/Activity_Main_Manual;)V

    .line 124
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    #getter for: Lcom/jellybus/fx/Activity_Main_Manual;->manual_advance:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Manual;->access$7(Lcom/jellybus/fx/Activity_Main_Manual;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 125
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main_Manual$3;->this$0:Lcom/jellybus/fx/Activity_Main_Manual;

    #calls: Lcom/jellybus/fx/Activity_Main_Manual;->loadAdvance()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main_Manual;->access$8(Lcom/jellybus/fx/Activity_Main_Manual;)V

    .line 127
    :cond_0
    return-void
.end method

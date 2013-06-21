.class Lcom/jellybus/fx/Activity_Border_Stamp_User$5;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp_User.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp_User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->sub_menu:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$15(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->sub_menu:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$15(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_figure:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$16(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->sub_menu:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$15(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 345
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->stamp_button_figure:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$16(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

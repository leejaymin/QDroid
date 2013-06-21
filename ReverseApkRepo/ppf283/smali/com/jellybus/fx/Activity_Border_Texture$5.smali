.class Lcom/jellybus/fx/Activity_Border_Texture$5;
.super Ljava/lang/Object;
.source "Activity_Border_Texture.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Texture;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 498
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    const/16 v2, 0x7f

    #setter for: Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$2(Lcom/jellybus/fx/Activity_Border_Texture;I)V

    .line 499
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$1(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$10(Lcom/jellybus/fx/Activity_Border_Texture;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 500
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_seekbar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$11(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$10(Lcom/jellybus/fx/Activity_Border_Texture;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 501
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$5;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Reset"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 502
    .local v0, reset:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 503
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 504
    return-void
.end method

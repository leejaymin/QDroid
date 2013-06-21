.class Lcom/jellybus/fx/Activity_Color_Color$3;
.super Ljava/lang/Object;
.source "Activity_Color_Color.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Color;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Color;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 278
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$6(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 289
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$0(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const/4 v2, 0x1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->isReset:Z
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$13(Lcom/jellybus/fx/Activity_Color_Color;Z)V

    .line 293
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->setProgressValue()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$1(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 295
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->isReset:Z
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$13(Lcom/jellybus/fx/Activity_Color_Color;Z)V

    .line 296
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    invoke-virtual {v1}, Lcom/jellybus/fx/Activity_Color_Color;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Reset"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 297
    .local v0, reset:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 298
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 299
    return-void

    .line 281
    .end local v0           #reset:Landroid/widget/Toast;
    :pswitch_1
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->value_first:I
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$9(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 282
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$10(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_first:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$10(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 285
    :pswitch_2
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->value_second:I
    invoke-static {v1, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$11(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 286
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$12(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$3;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_seekbar_second:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$12(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 279
    :pswitch_data_0
    .packed-switch 0x7f060083
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

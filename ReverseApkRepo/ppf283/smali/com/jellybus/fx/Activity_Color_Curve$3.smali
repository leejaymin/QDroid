.class Lcom/jellybus/fx/Activity_Color_Curve$3;
.super Ljava/lang/Object;
.source "Activity_Color_Curve.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const v1, 0x7f02006e

    .line 167
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setOffBG()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$5(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 170
    :pswitch_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_rgb:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$6(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 171
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/4 v1, 0x0

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$7(Lcom/jellybus/fx/Activity_Color_Curve;I)V

    .line 172
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$9(Lcom/jellybus/fx/Activity_Color_Curve;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CurveView;->setCurRGB(I)V

    .line 173
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->changeChannel()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$10(Lcom/jellybus/fx/Activity_Color_Curve;)V

    goto :goto_0

    .line 176
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_r:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$11(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 177
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/4 v1, 0x1

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$7(Lcom/jellybus/fx/Activity_Color_Curve;I)V

    .line 178
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$9(Lcom/jellybus/fx/Activity_Color_Curve;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CurveView;->setCurRGB(I)V

    .line 179
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->changeChannel()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$10(Lcom/jellybus/fx/Activity_Color_Curve;)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_g:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$12(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/4 v1, 0x2

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$7(Lcom/jellybus/fx/Activity_Color_Curve;I)V

    .line 184
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$9(Lcom/jellybus/fx/Activity_Color_Curve;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CurveView;->setCurRGB(I)V

    .line 185
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->changeChannel()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$10(Lcom/jellybus/fx/Activity_Color_Curve;)V

    goto :goto_0

    .line 188
    :pswitch_3
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_b:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$13(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/4 v1, 0x3

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$7(Lcom/jellybus/fx/Activity_Color_Curve;I)V

    .line 190
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->cv:Lcom/jellybus/fx_sub/CurveView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$8(Lcom/jellybus/fx/Activity_Color_Curve;)Lcom/jellybus/fx_sub/CurveView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curRGB:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$9(Lcom/jellybus/fx/Activity_Color_Curve;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/jellybus/fx_sub/CurveView;->setCurRGB(I)V

    .line 191
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$3;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->changeChannel()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$10(Lcom/jellybus/fx/Activity_Color_Curve;)V

    goto/16 :goto_0

    .line 168
    nop

    :pswitch_data_0
    .packed-switch 0x7f060093
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

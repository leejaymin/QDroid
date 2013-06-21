.class Lcom/jellybus/fx/Activity_Color_Color$2;
.super Ljava/lang/Object;
.source "Activity_Color_Color.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$0(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$5(Lcom/jellybus/fx/Activity_Color_Color;)I

    move-result v1

    sub-int v1, p2, v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$6(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 239
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$0(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$7(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_int:I
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$8(Lcom/jellybus/fx/Activity_Color_Color;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0xa

    .line 197
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$2(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exposure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 200
    :pswitch_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 201
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050053

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const/16 v1, 0x32

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 205
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050054

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$2(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const/16 v1, 0x7f

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 212
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050056

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_5
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v3}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 216
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050055

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->menu_index:Ljava/lang/String;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$2(Lcom/jellybus/fx/Activity_Color_Color;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "White Balance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 222
    :pswitch_7
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 223
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050057

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :pswitch_8
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->gap:I
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Color_Color;->access$3(Lcom/jellybus/fx/Activity_Color_Color;I)V

    .line 227
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    const v2, 0x7f050058

    invoke-virtual {v1, v2}, Lcom/jellybus/fx/Activity_Color_Color;->getString(I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/jellybus/fx/Activity_Color_Color;->temp_string:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Color;->access$4(Lcom/jellybus/fx/Activity_Color_Color;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x7f060084
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 209
    :pswitch_data_1
    .packed-switch 0x7f060084
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 220
    :pswitch_data_2
    .packed-switch 0x7f060084
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #getter for: Lcom/jellybus/fx/Activity_Color_Color;->color_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$0(Lcom/jellybus/fx/Activity_Color_Color;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Color$2;->this$0:Lcom/jellybus/fx/Activity_Color_Color;

    #calls: Lcom/jellybus/fx/Activity_Color_Color;->setProgressValue()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Color;->access$1(Lcom/jellybus/fx/Activity_Color_Color;)V

    .line 192
    return-void
.end method

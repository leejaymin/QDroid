.class Lcom/jellybus/fx/Activity_Border_Texture$2;
.super Ljava/lang/Object;
.source "Activity_Border_Texture.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_picture:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$1(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 225
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    rsub-int v2, p2, 0xff

    #setter for: Lcom/jellybus/fx/Activity_Border_Texture;->opacity:I
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Border_Texture;->access$2(Lcom/jellybus/fx/Activity_Border_Texture;I)V

    .line 227
    int-to-float v1, p2

    const/high16 v2, 0x437f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 228
    .local v0, count_opacity:I
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Texture;->access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    const v4, 0x7f05004e

    invoke-virtual {v3, v4}, Lcom/jellybus/fx/Activity_Border_Texture;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Texture;->access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Texture;->access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture$2;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Texture;->access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method

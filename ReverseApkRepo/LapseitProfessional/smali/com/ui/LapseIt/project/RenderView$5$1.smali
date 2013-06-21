.class Lcom/ui/LapseIt/project/RenderView$5$1;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/RenderView$5;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/project/RenderView$5;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView$5;Landroid/widget/EditText;Landroid/widget/SeekBar;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    iput-object p2, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->val$seekBar:Landroid/widget/SeekBar;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 161
    const/16 v4, 0x1e

    .line 163
    .local v4, tempFps:I
    :try_start_0
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 167
    :goto_0
    if-gtz v4, :cond_1

    .line 168
    const/4 v4, 0x1

    .line 173
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 175
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, fpsString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v2

    .line 177
    .local v2, fpsSpan:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 178
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, -0x4600

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 179
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v7

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderFps:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView;->access$8(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 181
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v7

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    int-to-float v8, v4

    div-float v6, v7, v8

    .line 183
    .local v6, videoLength:F
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0800ef

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, durationString:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v8}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v8

    float-to-double v9, v6

    const/4 v11, 0x2

    const/4 v12, 0x1

    #calls: Lcom/ui/LapseIt/project/RenderView;->round(DII)D
    invoke-static {v8, v9, v10, v11, v12}, Lcom/ui/LapseIt/project/RenderView;->access$9(Lcom/ui/LapseIt/project/RenderView;DII)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v5

    .line 185
    .local v5, timeSpan:Landroid/text/SpannableString;
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/4 v8, -0x1

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 186
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const/16 v8, -0x4600

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v10, 0x12

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 187
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v7

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderTime:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView;->access$10(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;

    move-result-object v7

    sget-object v8, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v7, v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 189
    iget-object v7, p0, Lcom/ui/LapseIt/project/RenderView$5$1;->this$1:Lcom/ui/LapseIt/project/RenderView$5;

    #getter for: Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;
    invoke-static {v7}, Lcom/ui/LapseIt/project/RenderView$5;->access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;

    move-result-object v7

    const-string v8, "renderfps"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 164
    .end local v0           #durationString:Ljava/lang/String;
    .end local v2           #fpsSpan:Landroid/text/SpannableString;
    .end local v3           #fpsString:Ljava/lang/String;
    .end local v5           #timeSpan:Landroid/text/SpannableString;
    .end local v6           #videoLength:F
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 169
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v7, 0xf0

    if-lt v4, v7, :cond_0

    .line 170
    const/16 v4, 0xf0

    goto/16 :goto_1
.end method

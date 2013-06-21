.class Lcom/ui/LapseIt/project/RenderView$5;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/project/RenderView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/project/RenderView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/project/RenderView$5;)Lcom/ui/LapseIt/project/RenderView;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    return-object v0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 203
    iget-object v5, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    add-int/lit8 v6, p2, 0x1

    #setter for: Lcom/ui/LapseIt/project/RenderView;->fps:I
    invoke-static {v5, v6}, Lcom/ui/LapseIt/project/RenderView;->access$11(Lcom/ui/LapseIt/project/RenderView;I)V

    .line 204
    iget-object v5, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, fpsString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->fps:I
    invoke-static {v6}, Lcom/ui/LapseIt/project/RenderView;->access$5(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 206
    .local v1, fpsSpan:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 207
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, -0x4600

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 208
    iget-object v5, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderFps:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ui/LapseIt/project/RenderView;->access$8(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 210
    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getEndFrame()I

    move-result v5

    invoke-static {}, Lcom/ui/LapseIt/project/TrimWidget;->getStartFrame()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->fps:I
    invoke-static {v6}, Lcom/ui/LapseIt/project/RenderView;->access$5(Lcom/ui/LapseIt/project/RenderView;)I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 212
    .local v4, videoLength:F
    iget-object v5, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-virtual {v5}, Lcom/ui/LapseIt/project/RenderView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, durationString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    float-to-double v7, v4

    const/4 v9, 0x2

    const/4 v10, 0x1

    #calls: Lcom/ui/LapseIt/project/RenderView;->round(DII)D
    invoke-static {v6, v7, v8, v9, v10}, Lcom/ui/LapseIt/project/RenderView;->access$9(Lcom/ui/LapseIt/project/RenderView;DII)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " secs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    .line 214
    .local v3, timeSpan:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 215
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, -0x4600

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 216
    iget-object v5, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->renderTime:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/ui/LapseIt/project/RenderView;->access$10(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 217
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 198
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .parameter "seekBar"

    .prologue
    const/4 v4, 0x1

    .line 141
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 142
    .local v1, alert:Landroid/app/AlertDialog$Builder;
    const-string v3, "Set FPS"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v2, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView$5;->this$0:Lcom/ui/LapseIt/project/RenderView;

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 145
    .local v2, input:Landroid/widget/EditText;
    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    .line 146
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 147
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 148
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 149
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 152
    .local v0, FilterArray:[Landroid/text/InputFilter;
    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v0, v3

    .line 153
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 155
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 157
    const-string v3, "Set"

    .line 158
    new-instance v4, Lcom/ui/LapseIt/project/RenderView$5$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/ui/LapseIt/project/RenderView$5$1;-><init>(Lcom/ui/LapseIt/project/RenderView$5;Landroid/widget/EditText;Landroid/widget/SeekBar;)V

    .line 157
    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 194
    return-void
.end method

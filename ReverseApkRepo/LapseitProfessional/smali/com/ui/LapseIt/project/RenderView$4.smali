.class Lcom/ui/LapseIt/project/RenderView$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/project/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private currentName:Ljava/lang/String;

.field private errorAt:I

.field final synthetic this$0:Lcom/ui/LapseIt/project/RenderView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/project/RenderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/project/RenderView$4;->this$0:Lcom/ui/LapseIt/project/RenderView;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IsValid(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 415
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 420
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 416
    :cond_0
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_1

    .line 417
    const/4 v1, 0x0

    goto :goto_1

    .line 415
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 435
    invoke-direct {p0, p1}, Lcom/ui/LapseIt/project/RenderView$4;->IsValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    :try_start_0
    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$4;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/ui/LapseIt/project/RenderView$4;->currentName:Ljava/lang/String;

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 439
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Aff "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView$4;->currentName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ui/LapseIt/project/RenderView$4;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v1, "trace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/ui/LapseIt/project/RenderView$4;->this$0:Lcom/ui/LapseIt/project/RenderView;

    #getter for: Lcom/ui/LapseIt/project/RenderView;->filenameInput:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/ui/LapseIt/project/RenderView;->access$0(Lcom/ui/LapseIt/project/RenderView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 430
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ui/LapseIt/project/RenderView$4;->currentName:Ljava/lang/String;

    .line 431
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 425
    iput p2, p0, Lcom/ui/LapseIt/project/RenderView$4;->errorAt:I

    .line 426
    return-void
.end method

.class Lorg/connectbot/GeneratePubkeyActivity$6;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/GeneratePubkeyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/GeneratePubkeyActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/GeneratePubkeyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 163
    if-nez p2, :cond_1

    .line 165
    :try_start_0
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v1, v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$15(Lorg/connectbot/GeneratePubkeyActivity;I)V

    .line 166
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v1

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v2

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v1, v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$15(Lorg/connectbot/GeneratePubkeyActivity;I)V

    .line 168
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object v1

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v2

    iget-object v3, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v3}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 177
    :cond_1
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, nfe:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    const/16 v2, 0x400

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v1, v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$15(Lorg/connectbot/GeneratePubkeyActivity;I)V

    .line 172
    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$6;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

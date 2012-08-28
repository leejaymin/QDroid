.class Lorg/connectbot/GeneratePubkeyActivity$4;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


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
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/16 v4, 0x400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    const v0, 0x7f0b0012

    if-ne p2, v0, :cond_1

    .line 112
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    const/16 v1, 0x300

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v0, v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$10(Lorg/connectbot/GeneratePubkeyActivity;I)V

    .line 114
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 115
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v1

    rsub-int v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 117
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    const-string v1, "RSA"

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$14(Lorg/connectbot/GeneratePubkeyActivity;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const v0, 0x7f0b0013

    if-ne p2, v0, :cond_0

    .line 124
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsSlider:Landroid/widget/SeekBar;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$11(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v1

    rsub-int v1, v1, 0x400

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lorg/connectbot/GeneratePubkeyActivity$4;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    const-string v1, "DSA"

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->keyType:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/connectbot/GeneratePubkeyActivity;->access$14(Lorg/connectbot/GeneratePubkeyActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

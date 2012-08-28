.class Lorg/connectbot/GeneratePubkeyActivity$5;
.super Ljava/lang/Object;
.source "GeneratePubkeyActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    iput-object p1, p0, Lorg/connectbot/GeneratePubkeyActivity$5;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 142
    rem-int/lit8 v0, p2, 0x8

    .line 143
    .local v0, leftover:I
    move v1, p2

    .line 145
    .local v1, ourProgress:I
    if-lez v0, :cond_0

    .line 146
    rsub-int/lit8 v2, v0, 0x8

    add-int/2addr v1, v2

    .line 148
    :cond_0
    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$5;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    iget-object v3, p0, Lorg/connectbot/GeneratePubkeyActivity$5;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->minBits:I
    invoke-static {v3}, Lorg/connectbot/GeneratePubkeyActivity;->access$12(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v3

    add-int/2addr v3, v1

    #setter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v2, v3}, Lorg/connectbot/GeneratePubkeyActivity;->access$15(Lorg/connectbot/GeneratePubkeyActivity;I)V

    .line 149
    iget-object v2, p0, Lorg/connectbot/GeneratePubkeyActivity$5;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bitsText:Landroid/widget/EditText;
    invoke-static {v2}, Lorg/connectbot/GeneratePubkeyActivity;->access$13(Lorg/connectbot/GeneratePubkeyActivity;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lorg/connectbot/GeneratePubkeyActivity$5;->this$0:Lorg/connectbot/GeneratePubkeyActivity;

    #getter for: Lorg/connectbot/GeneratePubkeyActivity;->bits:I
    invoke-static {v3}, Lorg/connectbot/GeneratePubkeyActivity;->access$3(Lorg/connectbot/GeneratePubkeyActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 150
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 154
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 158
    return-void
.end method

.class Lcom/qiip/arm/activity/ArmLoginMainActivity$4;
.super Ljava/lang/Object;
.source "ArmLoginMainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiip/arm/activity/ArmLoginMainActivity;->getBodyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;


# direct methods
.method constructor <init>(Lcom/qiip/arm/activity/ArmLoginMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 138
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 144
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mTextid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->refreshDrawableState()V

    .line 162
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/qiip/arm/activity/ArmLoginMainActivity$4;->this$0:Lcom/qiip/arm/activity/ArmLoginMainActivity;

    iget-object v0, v0, Lcom/qiip/arm/activity/ArmLoginMainActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    goto :goto_0
.end method

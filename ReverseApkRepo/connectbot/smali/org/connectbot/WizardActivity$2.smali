.class Lorg/connectbot/WizardActivity$2;
.super Ljava/lang/Object;
.source "WizardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/WizardActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/WizardActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/WizardActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->isFirstDisplayed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/connectbot/WizardActivity;->setResult(I)V

    .line 79
    iget-object v0, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 83
    iget-object v0, p0, Lorg/connectbot/WizardActivity$2;->this$0:Lorg/connectbot/WizardActivity;

    invoke-virtual {v0}, Lorg/connectbot/WizardActivity;->updateButtons()V

    goto :goto_0
.end method

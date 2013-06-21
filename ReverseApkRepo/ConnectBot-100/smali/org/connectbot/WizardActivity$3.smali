.class final Lorg/connectbot/WizardActivity$3;
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
    iput-object p1, p0, Lorg/connectbot/WizardActivity$3;->this$0:Lorg/connectbot/WizardActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 99
    iget-object v0, p0, Lorg/connectbot/WizardActivity$3;->this$0:Lorg/connectbot/WizardActivity;

    iget-object v0, v0, Lorg/connectbot/WizardActivity;->actionHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 100
    return-void
.end method

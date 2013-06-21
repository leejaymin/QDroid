.class Lcom/fleapapa/helper/CallMan$14;
.super Ljava/lang/Object;
.source "CallMan.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/CallMan;->gotoCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/CallMan;

.field private final synthetic val$call:Lcom/fleapapa/helper/CallPapa$Call;

.field private final synthetic val$mb:Lcom/fleapapa/util/MyImageButton;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;Lcom/fleapapa/util/MyImageButton;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$14;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$14;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iput-object p3, p0, Lcom/fleapapa/helper/CallMan$14;->val$mb:Lcom/fleapapa/util/MyImageButton;

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$14;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$14;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    .line 497
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$14;->val$mb:Lcom/fleapapa/util/MyImageButton;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$14;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$14;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0600df

    :goto_1
    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/CallMan;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/fleapapa/util/MyImageButton;->text:Ljava/lang/String;

    .line 498
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$14;->val$mb:Lcom/fleapapa/util/MyImageButton;

    iget-object v1, p0, Lcom/fleapapa/helper/CallMan$14;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget-boolean v1, v1, Lcom/fleapapa/helper/CallPapa$Call;->muted:Z

    if-nez v1, :cond_2

    const v1, 0x7f020057

    :goto_2
    invoke-virtual {v0, v1}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 499
    return-void

    .line 496
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const v2, 0x7f0600de

    goto :goto_1

    .line 498
    :cond_2
    const v1, 0x7f02003d

    goto :goto_2
.end method

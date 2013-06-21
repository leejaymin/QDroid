.class Lcom/fleapapa/helper/CallMan$17;
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


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/CallMan;Lcom/fleapapa/helper/CallPapa$Call;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iput-object p2, p0, Lcom/fleapapa/helper/CallMan$17;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 537
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    #getter for: Lcom/fleapapa/helper/CallMan;->WHO:Ljava/lang/String;
    invoke-static {v2}, Lcom/fleapapa/helper/CallMan;->access$0(Lcom/fleapapa/helper/CallMan;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": tstate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fleapapa/helper/CallMan$17;->val$call:Lcom/fleapapa/helper/CallPapa$Call;

    iget v2, v2, Lcom/fleapapa/helper/CallPapa$Call;->tstate:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 540
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/fleapapa/helper/CallMan;->addBursts(IZ)V

    .line 548
    :goto_0
    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-eqz v0, :cond_1

    .line 549
    sget-object v0, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    invoke-virtual {v0, v3, v3}, Lcom/fleapapa/helper/CallPapa;->hello(ZZ)V

    .line 550
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    sget-object v1, Lcom/fleapapa/helper/CallMan;->handler:Landroid/os/Handler;

    sget-object v2, Lcom/fleapapa/util/My;->papa:Lcom/fleapapa/helper/CallPapa;

    iget-object v2, v2, Lcom/fleapapa/helper/CallPapa;->acall:Lcom/fleapapa/helper/CallPapa$Call;

    invoke-static {v0, v1, v2}, Lcom/fleapapa/helper/CallMan;->invite(Landroid/content/Context;Landroid/os/Handler;Lcom/fleapapa/helper/CallPapa$Call;)V

    .line 554
    :goto_1
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->mview:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/MapView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    iget-object v0, v0, Lcom/fleapapa/helper/CallMan;->bview:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/fleapapa/helper/CallMan$17;->this$0:Lcom/fleapapa/helper/CallMan;

    const/16 v1, 0x3e7

    invoke-static {v0, v3, v1}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    goto :goto_1
.end method

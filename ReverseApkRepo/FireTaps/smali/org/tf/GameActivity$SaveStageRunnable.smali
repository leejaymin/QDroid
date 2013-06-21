.class Lorg/tf/GameActivity$SaveStageRunnable;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/GameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveStageRunnable"
.end annotation


# instance fields
.field private m_bundle:Landroid/os/Bundle;

.field private m_save:Z

.field final synthetic this$0:Lorg/tf/GameActivity;


# direct methods
.method public constructor <init>(Lorg/tf/GameActivity;ZLandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter "save"
    .parameter "bundle"

    .prologue
    .line 533
    iput-object p1, p0, Lorg/tf/GameActivity$SaveStageRunnable;->this$0:Lorg/tf/GameActivity;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p3, p0, Lorg/tf/GameActivity$SaveStageRunnable;->m_bundle:Landroid/os/Bundle;

    .line 532
    iput-boolean p2, p0, Lorg/tf/GameActivity$SaveStageRunnable;->m_save:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 535
    iget-boolean v0, p0, Lorg/tf/GameActivity$SaveStageRunnable;->m_save:Z

    if-eqz v0, :cond_0

    const-string v0, "taps"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m_id0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/tf/GameActivity;->access$8()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_id1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/tf/GameActivity;->access$9()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Lorg/tf/GameActivity$SaveStageRunnable;->this$0:Lorg/tf/GameActivity;

    iget-object v1, p0, Lorg/tf/GameActivity$SaveStageRunnable;->m_bundle:Landroid/os/Bundle;

    #calls: Lorg/tf/GameActivity;->onSaveStage(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lorg/tf/GameActivity;->access$12(Lorg/tf/GameActivity;Landroid/os/Bundle;)V

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/tf/GameActivity$SaveStageRunnable;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$11(Lorg/tf/GameActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lskiba/util/Simply;->notify(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

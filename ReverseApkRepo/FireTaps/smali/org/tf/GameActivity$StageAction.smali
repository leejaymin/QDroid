.class Lorg/tf/GameActivity$StageAction;
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
    name = "StageAction"
.end annotation


# static fields
.field public static final PAUSE:I = 0x2

.field public static final RESTART:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x1


# instance fields
.field private m_action:I

.field private m_notify:Z

.field final synthetic this$0:Lorg/tf/GameActivity;


# direct methods
.method public constructor <init>(Lorg/tf/GameActivity;IZ)V
    .locals 0
    .parameter
    .parameter "action"
    .parameter "notify"

    .prologue
    .line 518
    iput-object p1, p0, Lorg/tf/GameActivity$StageAction;->this$0:Lorg/tf/GameActivity;

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput p2, p0, Lorg/tf/GameActivity$StageAction;->m_action:I

    .line 517
    iput-boolean p3, p0, Lorg/tf/GameActivity$StageAction;->m_notify:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lorg/tf/GameActivity$StageAction;->this$0:Lorg/tf/GameActivity;

    iget v1, p0, Lorg/tf/GameActivity$StageAction;->m_action:I

    #calls: Lorg/tf/GameActivity;->onStageAction(I)V
    invoke-static {v0, v1}, Lorg/tf/GameActivity;->access$10(Lorg/tf/GameActivity;I)V

    .line 521
    iget-boolean v0, p0, Lorg/tf/GameActivity$StageAction;->m_notify:Z

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/tf/GameActivity$StageAction;->this$0:Lorg/tf/GameActivity;

    #getter for: Lorg/tf/GameActivity;->m_glEventProcessedEvent:Ljava/lang/Object;
    invoke-static {v0}, Lorg/tf/GameActivity;->access$11(Lorg/tf/GameActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lskiba/util/Simply;->notify(Ljava/lang/Object;)V

    .line 524
    :cond_0
    return-void
.end method

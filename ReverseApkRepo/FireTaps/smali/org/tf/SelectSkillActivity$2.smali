.class Lorg/tf/SelectSkillActivity$2;
.super Ljava/lang/Object;
.source "SelectSkillActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/SelectSkillActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/tf/SelectSkillActivity;


# direct methods
.method constructor <init>(Lorg/tf/SelectSkillActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$2;->this$0:Lorg/tf/SelectSkillActivity;

    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$2;->this$0:Lorg/tf/SelectSkillActivity;

    const/4 v1, 0x0

    #setter for: Lorg/tf/SelectSkillActivity;->m_extractorStarting:Z
    invoke-static {v0, v1}, Lorg/tf/SelectSkillActivity;->access$1(Lorg/tf/SelectSkillActivity;Z)V

    .line 817
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$2;->this$0:Lorg/tf/SelectSkillActivity;

    #calls: Lorg/tf/SelectSkillActivity;->startExtractor()V
    invoke-static {v0}, Lorg/tf/SelectSkillActivity;->access$2(Lorg/tf/SelectSkillActivity;)V

    .line 818
    return-void
.end method

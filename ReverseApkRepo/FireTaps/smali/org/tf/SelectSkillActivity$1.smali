.class Lorg/tf/SelectSkillActivity$1;
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
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$1;->this$0:Lorg/tf/SelectSkillActivity;

    .line 809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$1;->this$0:Lorg/tf/SelectSkillActivity;

    #calls: Lorg/tf/SelectSkillActivity;->pollExtractor()V
    invoke-static {v0}, Lorg/tf/SelectSkillActivity;->access$0(Lorg/tf/SelectSkillActivity;)V

    .line 812
    return-void
.end method
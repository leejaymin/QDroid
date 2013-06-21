.class Lorg/tf/SelectSkillActivity$7;
.super Ljava/lang/Object;
.source "SelectSkillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/SelectSkillActivity;->onConverterPageAction(I)V
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
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$7;->this$0:Lorg/tf/SelectSkillActivity;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 480
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$7;->this$0:Lorg/tf/SelectSkillActivity;

    #calls: Lorg/tf/SelectSkillActivity;->playSong()V
    invoke-static {v0}, Lorg/tf/SelectSkillActivity;->access$12(Lorg/tf/SelectSkillActivity;)V

    .line 481
    return-void
.end method

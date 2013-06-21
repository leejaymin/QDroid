.class Lorg/tf/SelectSkillActivity$5;
.super Ljava/lang/Object;
.source "SelectSkillActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tf/SelectSkillActivity;->onSDCardPageAction(I)V
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
    iput-object p1, p0, Lorg/tf/SelectSkillActivity$5;->this$0:Lorg/tf/SelectSkillActivity;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 178
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$5;->this$0:Lorg/tf/SelectSkillActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lorg/tf/SelectSkillActivity;->flipToPage(IZ)V
    invoke-static {v0, v1, v2}, Lorg/tf/SelectSkillActivity;->access$10(Lorg/tf/SelectSkillActivity;IZ)V

    .line 179
    iget-object v0, p0, Lorg/tf/SelectSkillActivity$5;->this$0:Lorg/tf/SelectSkillActivity;

    #calls: Lorg/tf/SelectSkillActivity;->prepareSong()V
    invoke-static {v0}, Lorg/tf/SelectSkillActivity;->access$11(Lorg/tf/SelectSkillActivity;)V

    .line 180
    return-void
.end method

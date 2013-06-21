.class Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;
.super Ljava/lang/Object;
.source "ScoreSubmitLocalListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;->prepareView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;->this$0:Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem;

    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreSubmitLocalListItem$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 66
    return-void
.end method

.class Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->attachPulltab(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;


# direct methods
.method constructor <init>(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner$1;->this$1:Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;

    #getter for: Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->_tabPlaceHolder:Lcom/chillingo/crystal/ui/skinning/SkinnedView;
    invoke-static {v0}, Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;->access$500(Lcom/chillingo/crystal/ui/viewgroups/pullTab/PullTab$PullTabInner;)Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->explicitlyHandleTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.class Lti/modules/titanium/ui/widget/TiScrollableView$5;
.super Ljava/lang/Object;
.source "TiScrollableView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiScrollableView;->doMoveNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

.field final synthetic val$fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiScrollableView;Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$5;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiScrollableView$5;->val$fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 302
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$5;->val$fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doDetachView()V

    .line 303
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 311
    return-void
.end method

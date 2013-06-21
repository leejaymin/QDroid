.class Lti/modules/titanium/ui/widget/TiScrollableView$2;
.super Ljava/lang/Object;
.source "TiScrollableView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiScrollableView;-><init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiScrollableView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiScrollableView;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 148
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView$2;->this$0:Lti/modules/titanium/ui/widget/TiScrollableView;

    iget-object v0, v0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v0}, Lti/modules/titanium/ui/ScrollableViewProxy;->moveNext()V

    .line 149
    return-void
.end method

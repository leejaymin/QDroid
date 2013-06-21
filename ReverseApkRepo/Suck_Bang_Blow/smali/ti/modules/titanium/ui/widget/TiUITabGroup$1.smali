.class Lti/modules/titanium/ui/widget/TiUITabGroup$1;
.super Landroid/widget/FrameLayout;
.source "TiUITabGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUITabGroup;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;Lti/modules/titanium/ui/TiTabActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUITabGroup;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 55
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

    #getter for: Lti/modules/titanium/ui/widget/TiUITabGroup;->tabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lti/modules/titanium/ui/widget/TiUITabGroup;->access$100(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUITabGroup$1;->this$0:Lti/modules/titanium/ui/widget/TiUITabGroup;

    #getter for: Lti/modules/titanium/ui/widget/TiUITabGroup;->tabWidget:Landroid/widget/TabWidget;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUITabGroup;->access$000(Lti/modules/titanium/ui/widget/TiUITabGroup;)Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 60
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 61
    return-void
.end method

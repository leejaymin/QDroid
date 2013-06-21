.class Lti/modules/titanium/ui/widget/TiUIImageView$1;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lti/modules/titanium/ui/widget/TiImageView$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldWidth"
    .parameter "oldHeight"

    .prologue
    .line 125
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$1;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v1, 0x1

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V
    invoke-static {v0, v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V

    .line 126
    return-void
.end method

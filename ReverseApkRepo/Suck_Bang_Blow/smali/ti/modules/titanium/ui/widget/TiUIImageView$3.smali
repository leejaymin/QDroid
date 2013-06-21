.class Lti/modules/titanium/ui/widget/TiUIImageView$3;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;->start()V
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
    .line 422
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiUIImageView$3;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->handleStart()V

    .line 425
    return-void
.end method

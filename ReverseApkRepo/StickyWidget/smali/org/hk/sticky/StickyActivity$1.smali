.class Lorg/hk/sticky/StickyActivity$1;
.super Ljava/lang/Object;
.source "StickyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/hk/sticky/StickyActivity;->createSetButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/hk/sticky/StickyActivity;


# direct methods
.method constructor <init>(Lorg/hk/sticky/StickyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 81
    iget-object v2, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    #calls: Lorg/hk/sticky/StickyActivity;->saveStickyData()Lorg/hk/bean/StickyBean;
    invoke-static {v2}, Lorg/hk/sticky/StickyActivity;->access$0(Lorg/hk/sticky/StickyActivity;)Lorg/hk/bean/StickyBean;

    move-result-object v1

    .line 82
    .local v1, s:Lorg/hk/bean/StickyBean;
    iget-object v2, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    #getter for: Lorg/hk/sticky/StickyActivity;->mRemoteViewService:Lorg/hk/service/RemoteViewService;
    invoke-static {v2}, Lorg/hk/sticky/StickyActivity;->access$1(Lorg/hk/sticky/StickyActivity;)Lorg/hk/service/RemoteViewService;

    move-result-object v2

    iget-object v3, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    #getter for: Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I
    invoke-static {v3}, Lorg/hk/sticky/StickyActivity;->access$2(Lorg/hk/sticky/StickyActivity;)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/hk/service/RemoteViewService;->setRemoteView(Lorg/hk/bean/StickyBean;I)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, resultValue:Landroid/content/Intent;
    const-string v2, "appWidgetId"

    .line 85
    iget-object v3, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    #getter for: Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I
    invoke-static {v3}, Lorg/hk/sticky/StickyActivity;->access$2(Lorg/hk/sticky/StickyActivity;)I

    move-result v3

    .line 84
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    iget-object v2, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v0}, Lorg/hk/sticky/StickyActivity;->setResult(ILandroid/content/Intent;)V

    .line 87
    iget-object v2, p0, Lorg/hk/sticky/StickyActivity$1;->this$0:Lorg/hk/sticky/StickyActivity;

    invoke-virtual {v2}, Lorg/hk/sticky/StickyActivity;->finish()V

    .line 88
    return-void
.end method

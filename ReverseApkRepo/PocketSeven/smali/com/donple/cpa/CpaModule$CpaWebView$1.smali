.class Lcom/donple/cpa/CpaModule$CpaWebView$1;
.super Ljava/lang/Object;
.source "CpaModule.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/donple/cpa/CpaModule$CpaWebView;-><init>(Lcom/donple/cpa/CpaModule;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/donple/cpa/CpaModule$CpaWebView;


# direct methods
.method constructor <init>(Lcom/donple/cpa/CpaModule$CpaWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/donple/cpa/CpaModule$CpaWebView$1;->this$1:Lcom/donple/cpa/CpaModule$CpaWebView;

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 902
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 912
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 906
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 902
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

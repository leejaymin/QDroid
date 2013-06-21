.class Lcom/tapfortap/AdView$3;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView;->displayAds(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;

.field final synthetic val$ad:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tapfortap/AdView$3;->this$0:Lcom/tapfortap/AdView;

    iput-object p2, p0, Lcom/tapfortap/AdView$3;->val$ad:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 213
    iget-object v2, p0, Lcom/tapfortap/AdView$3;->val$ad:Ljava/util/Map;

    const-string v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, url:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/tapfortap/AdView$3;->this$0:Lcom/tapfortap/AdView;

    invoke-virtual {v2}, Lcom/tapfortap/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tapfortap/AdView$3$1;

    invoke-direct {v3, p0}, Lcom/tapfortap/AdView$3$1;-><init>(Lcom/tapfortap/AdView$3;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

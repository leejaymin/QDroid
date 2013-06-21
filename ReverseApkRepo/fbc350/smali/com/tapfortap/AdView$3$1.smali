.class Lcom/tapfortap/AdView$3$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tapfortap/AdView$3;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView$3;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/tapfortap/AdView$3$1;->this$1:Lcom/tapfortap/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tapfortap/AdView$3$1;->this$1:Lcom/tapfortap/AdView$3;

    iget-object v1, v0, Lcom/tapfortap/AdView$3;->this$0:Lcom/tapfortap/AdView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "go/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/tapfortap/AdView$3$1;->this$1:Lcom/tapfortap/AdView$3;

    iget-object v0, v0, Lcom/tapfortap/AdView$3;->val$ad:Ljava/util/Map;

    const-string v3, "impression_id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapfortap/TapForTap;->urlFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/tapfortap/AdView;->openReferralUrl(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/tapfortap/AdView;->access$500(Lcom/tapfortap/AdView;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.class Lcom/tapfortap/AdView$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapfortap/AdView;->loadAdsWithAppId(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapfortap/AdView;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/tapfortap/AdView;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tapfortap/AdView$2;->this$0:Lcom/tapfortap/AdView;

    iput-object p2, p0, Lcom/tapfortap/AdView$2;->val$params:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 139
    new-instance v0, Lcom/tapfortap/AdView$FillAdsTask;

    iget-object v1, p0, Lcom/tapfortap/AdView$2;->this$0:Lcom/tapfortap/AdView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tapfortap/AdView$FillAdsTask;-><init>(Lcom/tapfortap/AdView;Lcom/tapfortap/AdView$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapfortap/AdView$2;->val$params:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/tapfortap/AdView$FillAdsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

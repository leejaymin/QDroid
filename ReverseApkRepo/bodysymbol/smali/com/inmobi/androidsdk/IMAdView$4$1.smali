.class Lcom/inmobi/androidsdk/IMAdView$4$1;
.super Ljava/lang/Object;
.source "IMAdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMAdView$4;->notifyResult(ILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/IMAdView$4;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/IMAdView$4;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->a:Lcom/inmobi/androidsdk/IMAdView$4;

    iput-object p2, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->b:Ljava/lang/Object;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->a:Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView$4;->a(Lcom/inmobi/androidsdk/IMAdView$4;)Lcom/inmobi/androidsdk/IMAdView;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/impl/AdUnit;

    invoke-static {v1, v0}, Lcom/inmobi/androidsdk/IMAdView;->a(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 1081
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->a:Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-static {v0}, Lcom/inmobi/androidsdk/IMAdView$4;->a(Lcom/inmobi/androidsdk/IMAdView$4;)Lcom/inmobi/androidsdk/IMAdView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/IMAdView$4$1;->a:Lcom/inmobi/androidsdk/IMAdView$4;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView$4;->a(Lcom/inmobi/androidsdk/IMAdView$4;)Lcom/inmobi/androidsdk/IMAdView;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMAdView;->m(Lcom/inmobi/androidsdk/IMAdView;)Lcom/inmobi/androidsdk/impl/AdUnit;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/IMAdView;->b(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/impl/AdUnit;)V

    .line 1082
    return-void
.end method

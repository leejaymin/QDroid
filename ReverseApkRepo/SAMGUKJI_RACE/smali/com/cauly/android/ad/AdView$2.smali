.class Lcom/cauly/android/ad/AdView$2;
.super Ljava/util/TimerTask;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cauly/android/ad/AdView;->startReloadTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cauly/android/ad/AdView;


# direct methods
.method constructor <init>(Lcom/cauly/android/ad/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cauly/android/ad/AdView$2;->this$0:Lcom/cauly/android/ad/AdView;

    .line 750
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/cauly/android/ad/AdView$2;->this$0:Lcom/cauly/android/ad/AdView;

    invoke-virtual {v1}, Lcom/cauly/android/ad/AdView;->realodAD()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    :goto_0
    return-void

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Cauly Ads"

    const-string v2, "Timer"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

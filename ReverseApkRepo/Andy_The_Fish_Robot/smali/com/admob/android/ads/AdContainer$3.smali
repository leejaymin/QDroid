.class Lcom/admob/android/ads/AdContainer$3;
.super Ljava/lang/Thread;
.source "AdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/admob/android/ads/AdContainer;->click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/admob/android/ads/AdContainer;


# direct methods
.method constructor <init>(Lcom/admob/android/ads/AdContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 957
    iput-object p1, p0, Lcom/admob/android/ads/AdContainer$3;->this$0:Lcom/admob/android/ads/AdContainer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/admob/android/ads/AdContainer$3;->this$0:Lcom/admob/android/ads/AdContainer;

    #getter for: Lcom/admob/android/ads/AdContainer;->ad:Lcom/admob/android/ads/Ad;
    invoke-static {v0}, Lcom/admob/android/ads/AdContainer;->access$300(Lcom/admob/android/ads/AdContainer;)Lcom/admob/android/ads/Ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admob/android/ads/Ad;->clicked()V

    .line 961
    return-void
.end method

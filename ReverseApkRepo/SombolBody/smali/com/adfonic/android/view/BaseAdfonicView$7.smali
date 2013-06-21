.class Lcom/adfonic/android/view/BaseAdfonicView$7;
.super Lcom/adfonic/android/view/task/AmazonMarketUrlOpenerTask;
.source "BaseAdfonicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adfonic/android/view/BaseAdfonicView;->openAmazonMarket(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adfonic/android/view/BaseAdfonicView;


# direct methods
.method constructor <init>(Lcom/adfonic/android/view/BaseAdfonicView;)V
    .locals 0
    .parameter

    .prologue
    .line 388
    iput-object p1, p0, Lcom/adfonic/android/view/BaseAdfonicView$7;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-direct {p0}, Lcom/adfonic/android/view/task/AmazonMarketUrlOpenerTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$7;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0}, Lcom/adfonic/android/view/BaseAdfonicView;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected openUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "destinationUrl"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/adfonic/android/view/BaseAdfonicView$7;->this$0:Lcom/adfonic/android/view/BaseAdfonicView;

    invoke-virtual {v0, p1}, Lcom/adfonic/android/view/BaseAdfonicView;->open(Ljava/lang/String;)V

    .line 396
    return-void
.end method

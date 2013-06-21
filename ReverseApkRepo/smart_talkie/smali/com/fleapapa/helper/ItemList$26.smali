.class Lcom/fleapapa/helper/ItemList$26;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->match2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$26;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$26;->val$pdlg:Landroid/app/ProgressDialog;

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 558
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$26;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 559
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$26;->this$0:Lcom/fleapapa/helper/ItemList;

    invoke-virtual {v1, v3}, Lcom/fleapapa/helper/ItemList;->showVariables(Z)V

    .line 561
    sget-object v1, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    if-eqz v1, :cond_0

    .line 562
    sget-object v1, Lcom/fleapapa/helper/ItemList;->route:Lcom/fleapapa/helper/ItemRoute;

    iget-object v1, v1, Lcom/fleapapa/helper/ItemRoute;->points:[Lcom/google/android/maps/GeoPoint;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$26;->this$0:Lcom/fleapapa/helper/ItemList;

    const/4 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/fleapapa/helper/ItemMap;->mapItem(Landroid/app/Activity;Lcom/fleapapa/helper/Item;Z)V

    .line 566
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$26;->this$0:Lcom/fleapapa/helper/ItemList;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/admob/android/ads/AdView;

    invoke-virtual {v1}, Lcom/admob/android/ads/AdView;->requestFreshAd()V

    .line 567
    iget-object v1, p0, Lcom/fleapapa/helper/ItemList$26;->this$0:Lcom/fleapapa/helper/ItemList;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/ItemList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/admob/android/ads/AdView;

    sget v1, Lcom/fleapapa/util/My;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 567
    goto :goto_0

    .line 569
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 570
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ItemList.requestFreshAd: request ad "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

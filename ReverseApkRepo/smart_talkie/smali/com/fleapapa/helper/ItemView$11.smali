.class Lcom/fleapapa/helper/ItemView$11;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->add2Scroll(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$11;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$11;->val$item:Lcom/fleapapa/helper/Item;

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const-wide v5, 0x412e848000000000L

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "google.streetview:cbll="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/fleapapa/helper/ItemView$11;->val$item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->lati:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fleapapa/helper/ItemView$11;->val$item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->loni:I

    int-to-double v3, v3

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, uriString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 390
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$11;->this$0:Lcom/fleapapa/helper/ItemView;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/ItemView;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

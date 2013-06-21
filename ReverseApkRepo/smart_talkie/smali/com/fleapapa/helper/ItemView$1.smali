.class Lcom/fleapapa/helper/ItemView$1;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->scrollTo(Lcom/fleapapa/helper/Item;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$1;->this$0:Lcom/fleapapa/helper/ItemView;

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$1;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v0, v0, Lcom/fleapapa/helper/ItemView;->hscroll:Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$1;->this$0:Lcom/fleapapa/helper/ItemView;

    iget v1, v1, Lcom/fleapapa/helper/ItemView;->cidx:I

    sget v2, Lcom/fleapapa/util/My;->wwide:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 253
    return-void
.end method

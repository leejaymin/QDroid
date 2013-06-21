.class Lcom/fleapapa/helper/ItemView$7;
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
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$7;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$7;->val$item:Lcom/fleapapa/helper/Item;

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$7;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$7;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v1, v1, Lcom/fleapapa/helper/Item;->email:Ljava/lang/String;

    iget-object v2, p0, Lcom/fleapapa/helper/ItemView$7;->val$item:Lcom/fleapapa/helper/Item;

    iget-object v2, v2, Lcom/fleapapa/helper/Item;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/fleapapa/util/MyUtil;->email(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

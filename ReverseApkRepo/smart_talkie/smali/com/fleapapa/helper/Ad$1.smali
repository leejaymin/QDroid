.class Lcom/fleapapa/helper/Ad$1;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/Ad;->display(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Ad;

.field private final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/Ad;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/Ad$1;->this$0:Lcom/fleapapa/helper/Ad;

    iput-object p2, p0, Lcom/fleapapa/helper/Ad$1;->val$iv:Landroid/widget/ImageView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fleapapa/helper/Ad$1;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/fleapapa/helper/Ad$1;->this$0:Lcom/fleapapa/helper/Ad;

    iget-object v1, v1, Lcom/fleapapa/helper/Ad;->draw:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

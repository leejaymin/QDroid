.class Lcom/fleapapa/helper/ItemEdit$3;
.super Ljava/lang/Thread;
.source "ItemEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemEdit;->upload_photo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemEdit;

.field private final synthetic val$done:Ljava/lang/Runnable;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$photo_uri:Ljava/lang/String;

.field private final synthetic val$ucode:I


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$3;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$photo_uri:Ljava/lang/String;

    iput p4, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$ucode:I

    iput-object p5, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$done:Ljava/lang/Runnable;

    .line 179
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$3;->this$0:Lcom/fleapapa/helper/ItemEdit;

    new-instance v1, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iput-object v1, v0, Lcom/fleapapa/helper/ItemEdit;->flea:Lcom/fleapapa/helper/Flea;

    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$photo_uri:Ljava/lang/String;

    iget v2, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$ucode:I

    invoke-virtual {v1, v0, v2}, Lcom/fleapapa/helper/Flea;->upload_photo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fleapapa/helper/ItemEdit;->puri:Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$3;->val$done:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    return-void
.end method

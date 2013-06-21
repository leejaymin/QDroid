.class Lcom/fleapapa/helper/ItemEdit$1;
.super Ljava/lang/Object;
.source "ItemEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field private final synthetic val$int_handler:Landroid/os/Handler;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$ucode:I


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemEdit;ILandroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemEdit$1;->this$0:Lcom/fleapapa/helper/ItemEdit;

    iput p2, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$ucode:I

    iput-object p3, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$int_handler:Landroid/os/Handler;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 139
    new-instance v1, Lcom/fleapapa/helper/Flea;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/fleapapa/helper/Flea;-><init>(Z)V

    iget v2, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$ucode:I

    invoke-virtual {v1, v2}, Lcom/fleapapa/helper/Flea;->upload_check(I)I

    move-result v0

    .line 140
    .local v0, percent:I
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 142
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/fleapapa/helper/ItemEdit$1;->val$int_handler:Landroid/os/Handler;

    sget-object v2, Lcom/fleapapa/helper/ItemEdit;->wtf:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

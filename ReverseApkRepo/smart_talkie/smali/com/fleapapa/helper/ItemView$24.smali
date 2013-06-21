.class Lcom/fleapapa/helper/ItemView$24;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->watch(Lcom/fleapapa/helper/Item;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;

.field private final synthetic val$watch:Z


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$24;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$24;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$24;->val$item:Lcom/fleapapa/helper/Item;

    iput-boolean p4, p0, Lcom/fleapapa/helper/ItemView$24;->val$watch:Z

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 566
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$24;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 567
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$24;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    iget-boolean v2, p0, Lcom/fleapapa/helper/ItemView$24;->val$watch:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x1000

    :goto_0
    xor-int/2addr v1, v2

    iput v1, v0, Lcom/fleapapa/helper/Item;->flags:I

    .line 568
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$24;->this$0:Lcom/fleapapa/helper/ItemView;

    iget-object v1, p0, Lcom/fleapapa/helper/ItemView$24;->val$item:Lcom/fleapapa/helper/Item;

    invoke-virtual {v0, v1}, Lcom/fleapapa/helper/ItemView;->showVariables(Lcom/fleapapa/helper/Item;)V

    .line 569
    return-void

    .line 567
    :cond_0
    const/high16 v2, 0x2000

    goto :goto_0
.end method

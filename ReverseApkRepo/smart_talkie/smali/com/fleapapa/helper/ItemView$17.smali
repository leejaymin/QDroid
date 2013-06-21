.class Lcom/fleapapa/helper/ItemView$17;
.super Ljava/lang/Object;
.source "ItemView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemView;->delete(Lcom/fleapapa/helper/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemView;

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$17;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$17;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/fleapapa/helper/ItemView$17;->val$item:Lcom/fleapapa/helper/Item;

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$17;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 499
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$17;->this$0:Lcom/fleapapa/helper/ItemView;

    const v1, 0x7f060026

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;I)V

    .line 500
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$17;->val$item:Lcom/fleapapa/helper/Item;

    invoke-static {v0}, Lcom/fleapapa/helper/Item;->remove(Lcom/fleapapa/helper/Item;)V

    .line 501
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$17;->this$0:Lcom/fleapapa/helper/ItemView;

    invoke-virtual {v0}, Lcom/fleapapa/helper/ItemView;->finish()V

    .line 502
    return-void
.end method

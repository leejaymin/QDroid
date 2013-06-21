.class Lcom/fleapapa/helper/ItemView$25;
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

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemView;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemView$25;->this$0:Lcom/fleapapa/helper/ItemView;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemView$25;->val$pdlg:Landroid/app/ProgressDialog;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$25;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 574
    iget-object v0, p0, Lcom/fleapapa/helper/ItemView$25;->this$0:Lcom/fleapapa/helper/ItemView;

    const v1, 0x7f060011

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    .line 575
    return-void
.end method

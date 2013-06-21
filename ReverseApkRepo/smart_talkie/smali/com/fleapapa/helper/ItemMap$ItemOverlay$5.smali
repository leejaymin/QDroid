.class Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;
.super Ljava/lang/Object;
.source "ItemMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemMap$ItemOverlay;->matchItems(Lcom/fleapapa/helper/ItemRoute;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemMap$ItemOverlay;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;->this$1:Lcom/fleapapa/helper/ItemMap$ItemOverlay;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;->val$pdlg:Landroid/app/ProgressDialog;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/fleapapa/helper/ItemMap$ItemOverlay$5;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 566
    return-void
.end method

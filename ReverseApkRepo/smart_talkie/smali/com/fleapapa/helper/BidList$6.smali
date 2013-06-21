.class Lcom/fleapapa/helper/BidList$6;
.super Ljava/lang/Object;
.source "BidList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/BidList;->bid(Lcom/fleapapa/helper/Item;DI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/BidList;

.field private final synthetic val$bid:D

.field private final synthetic val$item:Lcom/fleapapa/helper/Item;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/BidList;Landroid/app/ProgressDialog;Lcom/fleapapa/helper/Item;D)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/BidList$6;->this$0:Lcom/fleapapa/helper/BidList;

    iput-object p2, p0, Lcom/fleapapa/helper/BidList$6;->val$pdlg:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/fleapapa/helper/BidList$6;->val$item:Lcom/fleapapa/helper/Item;

    iput-wide p4, p0, Lcom/fleapapa/helper/BidList$6;->val$bid:D

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fleapapa/helper/BidList$6;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 129
    iget-object v0, p0, Lcom/fleapapa/helper/BidList$6;->this$0:Lcom/fleapapa/helper/BidList;

    const v1, 0x7f060047

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/fleapapa/helper/Item;->ccname:[Ljava/lang/String;

    iget-object v5, p0, Lcom/fleapapa/helper/BidList$6;->val$item:Lcom/fleapapa/helper/Item;

    iget v5, v5, Lcom/fleapapa/helper/Item;->currency:I

    aget-object v4, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/fleapapa/helper/BidList$6;->val$bid:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/fleapapa/helper/BidList$6;->this$0:Lcom/fleapapa/helper/BidList;

    invoke-virtual {v0}, Lcom/fleapapa/helper/BidList;->showVariables()V

    .line 131
    iget-object v0, p0, Lcom/fleapapa/helper/BidList$6;->val$item:Lcom/fleapapa/helper/Item;

    iget v1, v0, Lcom/fleapapa/helper/Item;->nbid:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/fleapapa/helper/Item;->nbid:I

    .line 132
    return-void
.end method

.class Lcom/fleapapa/helper/ItemList$23;
.super Ljava/lang/Object;
.source "ItemList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/ItemList;->match1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/ItemList;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/ItemList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/ItemList$23;->this$0:Lcom/fleapapa/helper/ItemList;

    iput-object p2, p0, Lcom/fleapapa/helper/ItemList$23;->val$pdlg:Landroid/app/ProgressDialog;

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$23;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 534
    iget-object v0, p0, Lcom/fleapapa/helper/ItemList$23;->this$0:Lcom/fleapapa/helper/ItemList;

    const v1, 0x7f06008b

    invoke-static {v1}, Lcom/fleapapa/util/My;->string(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fleapapa/util/MyAlert;->alert(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    return-void
.end method

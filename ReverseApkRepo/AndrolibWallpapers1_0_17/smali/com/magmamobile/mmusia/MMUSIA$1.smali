.class Lcom/magmamobile/mmusia/MMUSIA$1;
.super Ljava/lang/Thread;
.source "MMUSIA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/MMUSIA;->Init(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magmamobile/mmusia/MMUSIA;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/MMUSIA;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/MMUSIA$1;->this$0:Lcom/magmamobile/mmusia/MMUSIA;

    iput-object p2, p0, Lcom/magmamobile/mmusia/MMUSIA$1;->val$context:Landroid/content/Context;

    .line 64
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/magmamobile/mmusia/MMUSIA$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/magmamobile/mmusia/MMUSIA$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/magmamobile/mmusia/MCommon;->getPrefNotifStatus(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/MMUSIA;->getLatestNews(Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;
.super Ljava/lang/Thread;
.source "MMUSIAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->lNews(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$nid:I


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iput-object p2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;->val$nid:I

    .line 151
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$4;->val$nid:I

    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/MMUSIA;->LNews(Landroid/content/Context;I)V

    return-void
.end method

.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;
.super Ljava/lang/Thread;
.source "MMUSIAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->loadNews(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iput-object p2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;->val$context:Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->loadNewsThread(Landroid/content/Context;)V

    return-void
.end method

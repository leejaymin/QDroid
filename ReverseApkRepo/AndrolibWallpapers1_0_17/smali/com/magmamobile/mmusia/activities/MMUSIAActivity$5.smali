.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;
.super Ljava/lang/Thread;
.source "MMUSIAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->lUpdate(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$pname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iput-object p2, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;->val$pname:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$5;->val$pname:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/MMUSIA;->LUpdate(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

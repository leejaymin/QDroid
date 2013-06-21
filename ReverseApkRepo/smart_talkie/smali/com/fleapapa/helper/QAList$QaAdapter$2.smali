.class Lcom/fleapapa/helper/QAList$QaAdapter$2;
.super Ljava/lang/Object;
.source "QAList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList$QaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fleapapa/helper/QAList$QaAdapter;

.field private final synthetic val$ll:Landroid/widget/LinearLayout;

.field private final synthetic val$position:I

.field private final synthetic val$qa:Lcom/fleapapa/helper/QA;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList$QaAdapter;Lcom/fleapapa/helper/QA;Landroid/widget/LinearLayout;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->this$1:Lcom/fleapapa/helper/QAList$QaAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$qa:Lcom/fleapapa/helper/QA;

    iput-object p3, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    iput p4, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$position:I

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 227
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QAListQaAdapter.getView: performItemClick="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$qa:Lcom/fleapapa/helper/QA;

    iget-object v2, v2, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->this$1:Lcom/fleapapa/helper/QAList$QaAdapter;

    #getter for: Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;
    invoke-static {v0}, Lcom/fleapapa/helper/QAList$QaAdapter;->access$0(Lcom/fleapapa/helper/QAList$QaAdapter;)Lcom/fleapapa/helper/QAList;

    move-result-object v0

    iget-object v0, v0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$ll:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/fleapapa/helper/QAList$QaAdapter$2;->val$position:I

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 229
    return-void
.end method

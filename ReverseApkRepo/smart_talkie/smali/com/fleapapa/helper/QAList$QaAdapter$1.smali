.class Lcom/fleapapa/helper/QAList$QaAdapter$1;
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

.field private final synthetic val$qa:Lcom/fleapapa/helper/QA;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList$QaAdapter;Lcom/fleapapa/helper/QA;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$QaAdapter$1;->this$1:Lcom/fleapapa/helper/QAList$QaAdapter;

    iput-object p2, p0, Lcom/fleapapa/helper/QAList$QaAdapter$1;->val$qa:Lcom/fleapapa/helper/QA;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$QaAdapter$1;->this$1:Lcom/fleapapa/helper/QAList$QaAdapter;

    #getter for: Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;
    invoke-static {v0}, Lcom/fleapapa/helper/QAList$QaAdapter;->access$0(Lcom/fleapapa/helper/QAList$QaAdapter;)Lcom/fleapapa/helper/QAList;

    move-result-object v0

    iget-object v1, p0, Lcom/fleapapa/helper/QAList$QaAdapter$1;->val$qa:Lcom/fleapapa/helper/QA;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V

    .line 221
    return-void
.end method

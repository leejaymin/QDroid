.class Lcom/fleapapa/helper/QAList$4;
.super Ljava/lang/Object;
.source "QAList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/QAList;

.field private final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/fleapapa/helper/QAList;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iput-object p2, p0, Lcom/fleapapa/helper/QAList$4;->val$pdlg:Landroid/app/ProgressDialog;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/QAList$4;)Lcom/fleapapa/helper/QAList;
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 101
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    invoke-static {v2, v4}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 102
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 104
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->adapter:Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/QAList$QaAdapter;->clear()V

    .line 105
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v3, v3, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    iput v3, v2, Lcom/fleapapa/helper/Item;->ncomt:I

    .line 106
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v2, v2, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->ncomt:I

    if-lez v2, :cond_2

    move v0, v5

    .line 107
    .local v0, hasQA:Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    invoke-virtual {v2, v4, v4}, Lcom/fleapapa/helper/QAList;->sortQA(II)V

    .line 108
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    invoke-virtual {v2}, Lcom/fleapapa/helper/QAList;->countRatings()V

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget v3, v3, Lcom/fleapapa/helper/QAList;->nneg:I

    iput v3, v2, Lcom/fleapapa/helper/Item;->ratn:I

    .line 110
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget v3, v3, Lcom/fleapapa/helper/QAList;->npos:I

    iput v3, v2, Lcom/fleapapa/helper/Item;->ratp:I

    .line 111
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 115
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    const v3, 0x7f080126

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 116
    .local v1, rgrp:Landroid/widget/RadioGroup;
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v2, v2, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit16 v2, v2, 0xff8

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget-boolean v2, v2, Lcom/fleapapa/helper/QAList;->isMyItem:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    iget v2, v2, Lcom/fleapapa/helper/QAList;->myRating:I

    if-nez v2, :cond_4

    .line 117
    invoke-virtual {v1, v4}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 118
    new-instance v2, Lcom/fleapapa/helper/QAList$4$1;

    invoke-direct {v2, p0}, Lcom/fleapapa/helper/QAList$4$1;-><init>(Lcom/fleapapa/helper/QAList$4;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 127
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    const v3, 0x7f080127

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 128
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    const v3, 0x7f080129

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 129
    iget-object v2, p0, Lcom/fleapapa/helper/QAList$4;->this$0:Lcom/fleapapa/helper/QAList;

    const v3, 0x7f080128

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/RadioButton;

    invoke-virtual {p0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 133
    :goto_2
    return-void

    .end local v0           #hasQA:Z
    .end local v1           #rgrp:Landroid/widget/RadioGroup;
    .restart local p0
    :cond_2
    move v0, v4

    .line 106
    goto/16 :goto_0

    .restart local v0       #hasQA:Z
    :cond_3
    move v3, v6

    .line 111
    goto :goto_1

    .line 132
    .restart local v1       #rgrp:Landroid/widget/RadioGroup;
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_2
.end method

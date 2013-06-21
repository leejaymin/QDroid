.class public Lcom/fleapapa/helper/QAList;
.super Landroid/app/Activity;
.source "QAList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/QAList$QaAdapter;
    }
.end annotation


# static fields
.field public static final WHO:Ljava/lang/String; = "QAList"


# instance fields
.field adapter:Lcom/fleapapa/helper/QAList$QaAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/QAList$QaAdapter",
            "<",
            "Lcom/fleapapa/helper/QA;",
            ">;"
        }
    .end annotation
.end field

.field cqa:Lcom/fleapapa/helper/QA;

.field cview:Landroid/webkit/WebView;

.field flea:Lcom/fleapapa/helper/Flea;

.field isMyItem:Z

.field item:Lcom/fleapapa/helper/Item;

.field lview:Landroid/widget/ListView;

.field myRating:I

.field nneg:I

.field npos:I

.field rating:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method countRatings()V
    .locals 7

    .prologue
    .line 156
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 157
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 164
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget v3, v3, Lcom/fleapapa/helper/Item;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    const v3, 0x7f0600a0

    :goto_1
    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/QAList;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/fleapapa/helper/QAList;->npos:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/fleapapa/helper/QAList;->nneg:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fleapapa/helper/QAList;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    return-void

    .line 158
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/QA;

    .line 159
    .local v1, qa:Lcom/fleapapa/helper/QA;
    iget v3, v1, Lcom/fleapapa/helper/QA;->rating:I

    if-nez v3, :cond_2

    .line 157
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iget v3, v1, Lcom/fleapapa/helper/QA;->uid:I

    sget v4, Lcom/fleapapa/util/My;->uid:I

    if-ne v3, v4, :cond_3

    iget v3, v1, Lcom/fleapapa/helper/QA;->rating:I

    iput v3, p0, Lcom/fleapapa/helper/QAList;->myRating:I

    .line 161
    :cond_3
    iget v3, v1, Lcom/fleapapa/helper/QA;->rating:I

    if-lez v3, :cond_4

    iget v3, p0, Lcom/fleapapa/helper/QAList;->npos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fleapapa/helper/QAList;->npos:I

    .line 162
    :cond_4
    iget v3, v1, Lcom/fleapapa/helper/QA;->rating:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/fleapapa/helper/QAList;->nneg:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/fleapapa/helper/QAList;->nneg:I

    goto :goto_2

    .line 164
    .end local v1           #qa:Lcom/fleapapa/helper/QA;
    :cond_5
    const v3, 0x7f06009f

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v3, "QAList.onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/QAList;->requestWindowFeature(I)Z

    .line 43
    const v2, 0x7f03001c

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/QAList;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/fleapapa/helper/QAList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "iid"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, iid:I
    invoke-static {v0}, Lcom/fleapapa/helper/ItemList;->item(I)Lcom/fleapapa/helper/Item;

    move-result-object v2

    iput-object v2, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    if-nez v2, :cond_0

    .line 48
    sget-object v2, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QAList.onCreate: no item for iid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p0}, Lcom/fleapapa/helper/QAList;->finish()V

    .line 51
    :cond_0
    sget-boolean v2, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget v2, v2, Lcom/fleapapa/helper/Item;->uid:I

    sget v3, Lcom/fleapapa/util/My;->uid:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/fleapapa/helper/QAList;->isMyItem:Z

    .line 52
    const v2, 0x7f080123

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    .line 53
    const v2, 0x7f080124

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/fleapapa/helper/QAList;->cview:Landroid/webkit/WebView;

    .line 55
    iget-object v2, p0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/QAList$QaAdapter;-><init>(Lcom/fleapapa/helper/QAList;)V

    iput-object v3, p0, Lcom/fleapapa/helper/QAList;->adapter:Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 57
    iget-object v2, p0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    new-instance v3, Lcom/fleapapa/helper/QAList$1;

    invoke-direct {v3, p0}, Lcom/fleapapa/helper/QAList$1;-><init>(Lcom/fleapapa/helper/QAList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 66
    invoke-virtual {p0, v6, v6}, Lcom/fleapapa/helper/QAList;->submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V

    .line 67
    return-void

    :cond_1
    move v2, v5

    .line 51
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    const-string v1, "QAList.onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 71
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 173
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->cview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->cview:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 177
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fleapapa/helper/QAList;->isMyItem:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/fleapapa/helper/QAList;->myRating:I

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_1
    return v0

    :cond_0
    move v1, v3

    .line 177
    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method sortQA(II)V
    .locals 5
    .parameter "rid"
    .parameter "level"

    .prologue
    .line 145
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 146
    .local v2, size:I
    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 154
    return-void

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->item:Lcom/fleapapa/helper/Item;

    iget-object v3, v3, Lcom/fleapapa/helper/Item;->qas:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fleapapa/helper/QA;

    .line 148
    .local v1, qa:Lcom/fleapapa/helper/QA;
    iget v3, v1, Lcom/fleapapa/helper/QA;->rid:I

    if-ne v3, p1, :cond_1

    .line 149
    iput p2, v1, Lcom/fleapapa/helper/QA;->level:I

    .line 150
    iget-object v3, p0, Lcom/fleapapa/helper/QAList;->adapter:Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-virtual {v3, v1}, Lcom/fleapapa/helper/QAList$QaAdapter;->add(Ljava/lang/Object;)V

    .line 151
    iget v3, v1, Lcom/fleapapa/helper/QA;->qid:I

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/fleapapa/helper/QAList;->sortQA(II)V

    .line 146
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method submit_qa(Lcom/fleapapa/helper/QA;Ljava/lang/String;)V
    .locals 8
    .parameter "qa"
    .parameter "feedback"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    iput v1, p0, Lcom/fleapapa/helper/QAList;->nneg:I

    iput v1, p0, Lcom/fleapapa/helper/QAList;->npos:I

    iput v1, p0, Lcom/fleapapa/helper/QAList;->myRating:I

    .line 76
    iput-object v4, p0, Lcom/fleapapa/helper/QAList;->cqa:Lcom/fleapapa/helper/QA;

    .line 77
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const v0, 0x7f080123

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    const v0, 0x7f080125

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    sget-object v2, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 82
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/fleapapa/helper/QAList$2;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/QAList$2;-><init>(Lcom/fleapapa/helper/QAList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/fleapapa/helper/QAList$3;

    invoke-direct {v1, p0}, Lcom/fleapapa/helper/QAList$3;-><init>(Lcom/fleapapa/helper/QAList;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {p0, v4, v4, v3, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v7

    .line 98
    .local v7, pdlg:Landroid/app/ProgressDialog;
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 99
    .local v5, handler:Landroid/os/Handler;
    new-instance v6, Lcom/fleapapa/helper/QAList$4;

    invoke-direct {v6, p0, v7}, Lcom/fleapapa/helper/QAList$4;-><init>(Lcom/fleapapa/helper/QAList;Landroid/app/ProgressDialog;)V

    .line 136
    .local v6, done:Ljava/lang/Runnable;
    invoke-static {p0, v3}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 137
    new-instance v0, Lcom/fleapapa/helper/QAList$5;

    const-string v2, "flea.item_qa"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/fleapapa/helper/QAList$5;-><init>(Lcom/fleapapa/helper/QAList;Ljava/lang/String;Lcom/fleapapa/helper/QA;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 142
    invoke-virtual {v0}, Lcom/fleapapa/helper/QAList$5;->start()V

    .line 143
    return-void
.end method

.method public viewQA(Lcom/fleapapa/helper/QA;)V
    .locals 3
    .parameter "qa"

    .prologue
    const/16 v2, 0x8

    .line 167
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->lview:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->cview:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 169
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/QAList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/fleapapa/helper/QAList;->cview:Landroid/webkit/WebView;

    const-string v1, "comment"

    iget-object v2, p1, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/fleapapa/util/MyUtil;->preview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

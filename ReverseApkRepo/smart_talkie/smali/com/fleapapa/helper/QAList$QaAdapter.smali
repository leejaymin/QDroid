.class public Lcom/fleapapa/helper/QAList$QaAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QAList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/QAList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QaAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/fleapapa/helper/QAList;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/QAList;)V
    .locals 1
    .parameter

    .prologue
    .line 189
    .local p0, this:Lcom/fleapapa/helper/QAList$QaAdapter;,"Lcom/fleapapa/helper/QAList$QaAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;

    .line 188
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/QAList$QaAdapter;)Lcom/fleapapa/helper/QAList;
    .locals 1
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 191
    .local p0, this:Lcom/fleapapa/helper/QAList$QaAdapter;,"Lcom/fleapapa/helper/QAList$QaAdapter<TT;>;"
    invoke-virtual {p0}, Lcom/fleapapa/helper/QAList$QaAdapter;->getCount()I

    move-result v4

    .line 193
    .local v4, nqa:I
    iget-object v6, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->inflater:Landroid/view/LayoutInflater;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Lcom/fleapapa/helper/QAList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    move-object v2, p2

    :goto_0
    check-cast v2, Landroid/widget/LinearLayout;

    .line 196
    .local v2, ll:Landroid/widget/LinearLayout;
    if-lt p1, v4, :cond_2

    .line 197
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "QAListQaAdapter.getView: position="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",count="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local p2
    :goto_1
    return-object v2

    .line 194
    .end local v2           #ll:Landroid/widget/LinearLayout;
    .restart local p2
    :cond_1
    iget-object v6, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->inflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    .line 200
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    :cond_2
    iget-object v6, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;

    iget-object v6, v6, Lcom/fleapapa/helper/QAList;->adapter:Lcom/fleapapa/helper/QAList$QaAdapter;

    invoke-virtual {v6, p1}, Lcom/fleapapa/helper/QAList$QaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fleapapa/helper/QA;

    .line 201
    .local v5, qa:Lcom/fleapapa/helper/QA;
    sget-boolean v6, Lcom/fleapapa/util/My;->isGuest:Z

    if-nez v6, :cond_3

    iget v6, v5, Lcom/fleapapa/helper/QA;->uid:I

    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    move v3, v6

    .line 203
    .local v3, myqa:Z
    :goto_2
    iget v6, v5, Lcom/fleapapa/helper/QA;->rating:I

    if-lez v6, :cond_4

    const v6, 0x7f007f00

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 207
    :goto_3
    const-string v0, ""

    .line 208
    .local v0, filler:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4
    iget v6, v5, Lcom/fleapapa/helper/QA;->level:I

    if-lt v1, v6, :cond_6

    .line 209
    const v6, 0x7f08012c

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/TextView;

    const-string v6, "%s%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    iget-object v9, v5, Lcom/fleapapa/helper/QA;->user:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v6, 0x7f08012d

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/fleapapa/helper/QA;->tago:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/fleapapa/helper/QAList$QaAdapter;->this$0:Lcom/fleapapa/helper/QAList;

    const v8, 0x7f060097

    invoke-virtual {v7, v8}, Lcom/fleapapa/helper/QAList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/fleapapa/helper/QA;->time:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const v6, 0x7f08012f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v5, Lcom/fleapapa/helper/QA;->feedback:Ljava/lang/String;

    const-string v8, "\n"

    const-string v9, " "

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v6, 0x7f08012f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz v3, :cond_7

    const/16 v6, -0x40

    :goto_5
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    const v6, 0x7f08012e

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget v6, v5, Lcom/fleapapa/helper/QA;->rating:I

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_6
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    const v6, 0x7f08012e

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget v6, v5, Lcom/fleapapa/helper/QA;->rating:I

    if-lez v6, :cond_9

    const v6, 0x7f06009d

    :goto_7
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 216
    const v6, 0x7f080130

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v3, :cond_a

    const/4 v7, 0x0

    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const v6, 0x7f080130

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    new-instance v6, Lcom/fleapapa/helper/QAList$QaAdapter$1;

    invoke-direct {v6, p0, v5}, Lcom/fleapapa/helper/QAList$QaAdapter$1;-><init>(Lcom/fleapapa/helper/QAList$QaAdapter;Lcom/fleapapa/helper/QA;)V

    invoke-virtual {p2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    new-instance v6, Lcom/fleapapa/helper/QAList$QaAdapter$2;

    invoke-direct {v6, p0, v5, v2, p1}, Lcom/fleapapa/helper/QAList$QaAdapter$2;-><init>(Lcom/fleapapa/helper/QAList$QaAdapter;Lcom/fleapapa/helper/QA;Landroid/widget/LinearLayout;I)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 201
    .end local v0           #filler:Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #myqa:Z
    .restart local p2
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    goto/16 :goto_2

    .line 204
    .restart local v3       #myqa:Z
    :cond_4
    iget v6, v5, Lcom/fleapapa/helper/QA;->rating:I

    if-gez v6, :cond_5

    const/high16 v6, 0x7f7f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 205
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_3

    .line 208
    .restart local v0       #filler:Ljava/lang/String;
    .restart local v1       #i:I
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 212
    .end local p2
    :cond_7
    const/4 v6, -0x1

    goto :goto_5

    .line 213
    :cond_8
    const/16 v6, 0x8

    goto :goto_6

    .line 214
    :cond_9
    const v6, 0x7f06009c

    goto :goto_7

    .line 216
    :cond_a
    const/16 v7, 0x8

    goto :goto_8
.end method

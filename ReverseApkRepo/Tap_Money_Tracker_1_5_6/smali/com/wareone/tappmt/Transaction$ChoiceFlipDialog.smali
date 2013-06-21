.class public Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;
.super Landroid/app/Dialog;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChoiceFlipDialog"
.end annotation


# instance fields
.field private m_OnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private m_adapter_child:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

.field private m_adapter_root:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

.field private m_child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_childData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_groupData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/util/List;I)V
    .locals 7
    .parameter "context"
    .parameter
    .parameter "groupIndex"
    .parameter
    .parameter "childIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/util/List",
            "<+",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;I)V"
        }
    .end annotation

    .prologue
    .local p2, groupData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p4, childData:Ljava/util/List;,"Ljava/util/List<+Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    const/4 v6, 0x1

    .line 169
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 161
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    .line 164
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_OnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    invoke-virtual {p0, v6}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->requestWindowFeature(I)Z

    .line 176
    const v4, 0x7f03000b

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->setContentView(I)V

    .line 178
    iput-object p2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_groupData:Ljava/util/List;

    .line 179
    iput-object p4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_childData:Ljava/util/List;

    .line 181
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 182
    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_childData:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 183
    const v4, 0x7f0c003b

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 184
    .local v1, lv_category_child:Landroid/widget/ListView;
    new-instance v4, Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    invoke-direct {v4, p1, v5}, Lcom/wareone/tappmt/Transaction$ChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_adapter_child:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    .line 185
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_adapter_child:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 187
    invoke-virtual {v1, p5, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 188
    new-instance v4, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$1;-><init>(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 204
    const v4, 0x7f0c0039

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 205
    .local v2, lv_category_root:Landroid/widget/ListView;
    new-instance v4, Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    iget-object v5, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_groupData:Ljava/util/List;

    invoke-direct {v4, p1, v5}, Lcom/wareone/tappmt/Transaction$ChoiceAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_adapter_root:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    .line 206
    iget-object v4, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_adapter_root:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 207
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 208
    invoke-virtual {v2, p3, v6}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 209
    new-instance v4, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$2;-><init>(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    const v4, 0x7f0c002e

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 241
    .local v0, btn_back:Landroid/widget/Button;
    new-instance v4, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog$3;-><init>(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)V

    .line 240
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    if-lez p5, :cond_0

    .line 251
    const v4, 0x7f0c0037

    invoke-virtual {p0, v4}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewFlipper;

    .line 252
    .local v3, vf:Landroid/widget/ViewFlipper;
    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showNext()V

    .line 255
    .end local v3           #vf:Landroid/widget/ViewFlipper;
    :cond_0
    return-void
.end method

.method private _ItemClick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_OnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 273
    return-void
.end method

.method private _refreshChild(I)V
    .locals 4
    .parameter "groupIndex"

    .prologue
    const/4 v3, 0x0

    .line 259
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 260
    iget-object v2, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_childData:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 261
    iget-object v1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_adapter_child:Lcom/wareone/tappmt/Transaction$ChoiceAdapter;

    invoke-virtual {v1}, Lcom/wareone/tappmt/Transaction$ChoiceAdapter;->notifyDataSetChanged()V

    .line 263
    const v1, 0x7f0c003b

    invoke-virtual {p0, v1}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 265
    .local v0, lv_category_child:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 266
    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 268
    return-void
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_child:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_data:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->_ItemClick(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_groupData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_childData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->_refreshChild(I)V

    return-void
.end method


# virtual methods
.method public getData(I)Ljava/util/Map;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public setOnItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 280
    iput-object p1, p0, Lcom/wareone/tappmt/Transaction$ChoiceFlipDialog;->m_OnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 281
    return-void
.end method

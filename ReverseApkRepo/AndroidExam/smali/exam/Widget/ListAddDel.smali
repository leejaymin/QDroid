.class public Lexam/Widget/ListAddDel;
.super Landroid/app/Activity;
.source "ListAddDel.java"


# instance fields
.field Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field list:Landroid/widget/ListView;

.field mClickListener:Landroid/view/View$OnClickListener;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    new-instance v0, Lexam/Widget/ListAddDel$1;

    invoke-direct {v0, p0}, Lexam/Widget/ListAddDel$1;-><init>(Lexam/Widget/ListAddDel;)V

    iput-object v0, p0, Lexam/Widget/ListAddDel;->mClickListener:Landroid/view/View$OnClickListener;

    .line 61
    new-instance v0, Lexam/Widget/ListAddDel$2;

    invoke-direct {v0, p0}, Lexam/Widget/ListAddDel$2;-><init>(Lexam/Widget/ListAddDel;)V

    iput-object v0, p0, Lexam/Widget/ListAddDel;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f03006d

    invoke-virtual {p0, v0}, Lexam/Widget/ListAddDel;->setContentView(I)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    .line 21
    iget-object v0, p0, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    const-string v1, "First"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    const-string v1, "Second"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v0, p0, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    const-string v1, "Third"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x109000f

    .line 26
    iget-object v2, p0, Lexam/Widget/ListAddDel;->Items:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    iput-object v0, p0, Lexam/Widget/ListAddDel;->Adapter:Landroid/widget/ArrayAdapter;

    .line 27
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lexam/Widget/ListAddDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    .line 28
    iget-object v0, p0, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lexam/Widget/ListAddDel;->Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 29
    iget-object v0, p0, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 31
    iget-object v0, p0, Lexam/Widget/ListAddDel;->list:Landroid/widget/ListView;

    iget-object v1, p0, Lexam/Widget/ListAddDel;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 32
    const v0, 0x7f0c0086

    invoke-virtual {p0, v0}, Lexam/Widget/ListAddDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ListAddDel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0c0016

    invoke-virtual {p0, v0}, Lexam/Widget/ListAddDel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lexam/Widget/ListAddDel;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.class public Lexam/Widget/ListOfViews;
.super Landroid/app/Activity;
.source "ListOfViews.java"


# instance fields
.field arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lexam/Widget/ListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f020014

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lexam/Widget/ListOfViews;->setContentView(I)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    .line 20
    iget-object v6, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v0, Lexam/Widget/ListItem;

    const-string v2, "\uc81c\ubaa9"

    const-string v3, "\uc785\ub825\ub0b4\uc6a9"

    const-string v4, ""

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v2, Lexam/Widget/ListItem;

    const-string v4, ""

    const-string v5, ""

    const-string v6, "push"

    move v3, v10

    invoke-direct/range {v2 .. v7}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v6, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v0, Lexam/Widget/ListItem;

    const-string v2, "\uc774\ub984\uc744 \uc785\ub825\ud558\uc2dc\uc624."

    const-string v3, "\ub2c8 \uc774\ub984"

    const-string v4, ""

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v6, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v0, Lexam/Widget/ListItem;

    const-string v2, "\ub098\uc774\ub3c4 \uc785\ub825\ud558\uc2dc\uc624."

    const-string v3, "\uba87\uc0b4\uc774\ub2c8"

    const-string v4, ""

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v2, Lexam/Widget/ListItem;

    const-string v4, ""

    const-string v5, ""

    const-string v6, "\ub204\ub974\uc2dc\uc624"

    move v3, v10

    invoke-direct/range {v2 .. v7}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v2, Lexam/Widget/ListItem;

    const-string v4, ""

    const-string v5, ""

    const-string v6, "\uc5c5\ub85c\ub4dc"

    move v3, v10

    invoke-direct/range {v2 .. v7}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v6, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    new-instance v0, Lexam/Widget/ListItem;

    const-string v2, "\uc8fc\uc18c"

    const-string v3, "\uc5b4\ub514 \uc0ac\ub2c8?"

    const-string v4, ""

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lexam/Widget/ListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v8, Lexam/Widget/MultiAdapter;

    iget-object v0, p0, Lexam/Widget/ListOfViews;->arItem:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v0}, Lexam/Widget/MultiAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 31
    .local v8, MyAdapter:Lexam/Widget/MultiAdapter;
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lexam/Widget/ListOfViews;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 32
    .local v9, MyList:Landroid/widget/ListView;
    invoke-virtual {v9, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 33
    return-void
.end method

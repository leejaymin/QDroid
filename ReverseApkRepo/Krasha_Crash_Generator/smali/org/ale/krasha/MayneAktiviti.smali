.class public Lorg/ale/krasha/MayneAktiviti;
.super Landroid/app/ListActivity;
.source "MayneAktiviti.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 62
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 63
    const-string v3, "StackOverflowException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 64
    const-string v3, "NullPointerException"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 65
    const-string v3, "ActivityNotFoundException"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 66
    const-string v3, "StringIndexOutOfBoundsException"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 67
    const-string v3, "ArrayIndexOutOfBoundsException"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 68
    const-string v3, "SuperNotCalledExceptionException"

    aput-object v3, v1, v2

    .line 72
    .local v1, testValues:[Ljava/lang/String;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 74
    .local v0, adapter:Landroid/widget/ListAdapter;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lorg/ale/krasha/MayneAktiviti;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Lorg/ale/krasha/MayneAktiviti;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 19
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0, v0}, Lorg/ale/krasha/MayneAktiviti;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 20
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x5

    .line 26
    packed-switch p3, :pswitch_data_0

    .line 52
    :goto_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 53
    return-void

    .line 28
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lorg/ale/krasha/StackOverflow;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v5, thissa:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lorg/ale/krasha/MayneAktiviti;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 32
    .end local v5           #thissa:Landroid/content/Intent;
    :pswitch_1
    const/4 v2, 0x0

    .line 33
    .local v2, nulla:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 34
    goto :goto_0

    .line 36
    .end local v2           #nulla:Ljava/lang/Integer;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lorg/ale/krasha/NotFound;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v1, notfound:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lorg/ale/krasha/MayneAktiviti;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    .end local v1           #notfound:Landroid/content/Intent;
    :pswitch_3
    const-string v3, "poo"

    .line 41
    .local v3, poo:Ljava/lang/String;
    const/4 v6, 0x4

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 43
    .end local v3           #poo:Ljava/lang/String;
    :pswitch_4
    const/4 v6, 0x3

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 44
    .local v0, asdf:[I
    aget v6, v0, v7

    aput v6, v0, v7

    .line 46
    .end local v0           #asdf:[I
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lorg/ale/krasha/SuperNotCalled;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v4, supernot:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lorg/ale/krasha/MayneAktiviti;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 43
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

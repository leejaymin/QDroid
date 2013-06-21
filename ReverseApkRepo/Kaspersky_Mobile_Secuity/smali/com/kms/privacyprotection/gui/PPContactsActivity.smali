.class public Lcom/kms/privacyprotection/gui/PPContactsActivity;
.super Lcom/kms/gui/KMSCommonContactsActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/util/Vector;

.field private d:I

.field private e:Lcom/kms/privacyprotection/PPItemsStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    .line 46
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    .line 50
    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 438
    return-void
.end method

.method private a(Ljava/lang/Long;)LeI;
    .locals 7
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0, p1}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactNameAndPhonesForId(Ljava/lang/Long;)Ljava/util/Vector;

    move-result-object v5

    .line 127
    new-instance v0, LeI;

    const/4 v1, 0x2

    const v2, 0x7f020051

    const v3, 0x7f020052

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Vector;
    .locals 8
    .parameter

    .prologue
    .line 146
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 147
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 149
    new-instance v0, LeI;

    const/4 v1, 0x1

    const v2, 0x7f020074

    const v3, 0x7f020075

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    :cond_0
    return-object v6
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    .line 170
    const/4 v1, 0x1

    const/high16 v2, 0x43b4

    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 172
    if-ge v0, v1, :cond_0

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 180
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_0
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->n()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(J)V

    return-void
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/privacyprotection/gui/PPContactsActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(J)V

    return-void
.end method

.method public static synthetic c(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Lcom/kms/privacyprotection/PPItemsStorage;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    return-object v0
.end method

.method public static synthetic d(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i()V

    return-void
.end method

.method public static synthetic e(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic f(Lcom/kms/privacyprotection/gui/PPContactsActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:I

    return v0
.end method

.method public static synthetic g(Lcom/kms/privacyprotection/gui/PPContactsActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic h(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 82
    const/16 v0, 0x14

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 88
    :cond_0
    return-void
.end method

.method private l()Ljava/util/Vector;
    .locals 7

    .prologue
    .line 92
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 93
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 95
    iget-boolean v0, v0, Lgf;->b:Z

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->m()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getPhones()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/util/Set;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 121
    return-object v1

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactsIds()Ljava/util/Vector;

    move-result-object v0

    .line 102
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 105
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lgr;->c(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Lgr;->a(Landroid/content/Context;Ljava/lang/Long;)LeI;

    move-result-object v0

    .line 114
    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_2
    invoke-direct {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Ljava/lang/Long;)LeI;

    move-result-object v0

    goto :goto_1
.end method

.method private m()Ljava/util/Vector;
    .locals 8

    .prologue
    .line 133
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 134
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->getContactNamesAndPhones()Ljava/util/Map;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 137
    new-instance v0, LeI;

    const/4 v1, 0x2

    const v2, 0x7f020051

    const v3, 0x7f020052

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 140
    :cond_0
    return-object v6
.end method

.method private n()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v0}, Lcom/kms/privacyprotection/PPItemsStorage;->removeAll()V

    .line 306
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i()V

    .line 307
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeI;

    .line 313
    iput p1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:I

    .line 314
    iget v0, v0, LeI;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 316
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->showDialog(I)V

    .line 158
    return-void
.end method

.method protected final b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(I)V

    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method protected final c()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->l()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Ljava/util/Vector;

    .line 480
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 497
    const v0, 0x7f060020

    return v0
.end method

.method protected final g()Z
    .locals 2

    .prologue
    .line 485
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgf;

    .line 486
    iget-boolean v0, v0, Lgf;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final h()Z
    .locals 1

    .prologue
    .line 491
    const/16 v0, 0x1d

    invoke-static {v0}, Lgj;->a(I)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3}, Lcom/kms/gui/KMSCommonContactsActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 329
    packed-switch p1, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 334
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 335
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lgr;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 336
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v2, v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->contactInList(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    iget-object v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    invoke-virtual {v2, v0, v1}, Lcom/kms/privacyprotection/PPItemsStorage;->AddContact(J)V

    .line 340
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i()V

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-static {}, Lcom/kms/privacyprotection/PPItemsStorage;->getInstance()Lcom/kms/privacyprotection/PPItemsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->e:Lcom/kms/privacyprotection/PPItemsStorage;

    .line 55
    const v0, 0x7f080092

    const v1, 0x7f080093

    const v2, 0x7f020077

    const v3, 0x7f020078

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(IIII)V

    .line 59
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0802cd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->i()V

    .line 63
    invoke-direct {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->k()V

    .line 65
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    const v1, 0x7f0802ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    const v1, 0x7f02005c

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const v1, 0x7f080157

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    const v1, 0x7f020089

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v5, 0x7f03002e

    const/4 v4, 0x1

    const/high16 v3, 0x41a0

    const/4 v1, 0x0

    const v2, 0x7f08011f

    .line 185
    .line 186
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 279
    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    new-instance v0, LgG;

    invoke-direct {v0, p0}, LgG;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    .line 192
    new-instance v1, Les;

    invoke-direct {v1, p0}, Les;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Les;->a(I)Les;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2, v0}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v1

    const v2, 0x7f080095

    invoke-virtual {v1, v2, v0}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 203
    :pswitch_1
    new-instance v6, LgD;

    invoke-direct {v6, p0}, LgD;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    .line 204
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 206
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 207
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 208
    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    .line 209
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Landroid/widget/TextView;)V

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    .line 213
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Les;->a(Landroid/view/View;IIII)Les;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1, v6}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080098

    invoke-virtual {v0, v1, v6}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 223
    :pswitch_2
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f07000d

    new-instance v2, LgE;

    invoke-direct {v2, p0}, LgE;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto/16 :goto_0

    .line 231
    :pswitch_3
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f07000e

    new-instance v2, LgF;

    invoke-direct {v2, p0}, LgF;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->c(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :pswitch_4
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f08011d

    new-instance v2, LgB;

    invoke-direct {v2, p0}, LgB;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f08011e

    new-instance v2, LgA;

    invoke-direct {v2, p0}, LgA;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto/16 :goto_0

    .line 263
    :pswitch_5
    new-instance v6, LgC;

    invoke-direct {v6, p0}, LgC;-><init>(Lcom/kms/privacyprotection/gui/PPContactsActivity;)V

    .line 264
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 266
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 267
    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 268
    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    .line 269
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a(Landroid/widget/TextView;)V

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/kms/privacyprotection/gui/PPContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v2, v0

    .line 273
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080120

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Les;->a(Landroid/view/View;IIII)Les;

    move-result-object v0

    const v1, 0x7f080097

    invoke-virtual {v0, v1, v6}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080098

    invoke-virtual {v0, v1, v6}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto/16 :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 287
    sparse-switch p1, :sswitch_data_0

    .line 300
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSCommonContactsActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 301
    return-void

    .line 291
    :sswitch_0
    iget-object v1, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->a:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->c:Ljava/util/Vector;

    iget v2, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->d:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeI;

    iget-object v0, v0, LeI;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 296
    :sswitch_1
    iget-object v0, p0, Lcom/kms/privacyprotection/gui/PPContactsActivity;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 287
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

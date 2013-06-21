.class public Lcom/fleapapa/helper/InterestSelector;
.super Landroid/app/Activity;
.source "InterestSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;,
        Lcom/fleapapa/helper/InterestSelector$ExpandView;
    }
.end annotation


# static fields
.field static final HIDE_UNSELECT:Ljava/lang/String; = "hide_unselect"

.field static final LAST_POSITION:Ljava/lang/String; = "last_position"

.field public static hideUnselect:Z

.field static inflated:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field static leaf:Landroid/graphics/drawable/Drawable;

.field static minu:Landroid/graphics/drawable/Drawable;

.field static plus:Landroid/graphics/drawable/Drawable;

.field static tcats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/Category;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final WHO:Ljava/lang/String;

.field adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fleapapa/helper/InterestSelector$CategoryAdapter",
            "<",
            "Lcom/fleapapa/helper/Category;",
            ">;"
        }
    .end annotation
.end field

.field flea:Lcom/fleapapa/helper/Flea;

.field helpTheMost:Z

.field layoutOptions:Landroid/widget/LinearLayout;

.field lview:Landroid/widget/ListView;

.field pcount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/fleapapa/helper/InterestSelector;->inflated:Landroid/util/SparseArray;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/fleapapa/helper/InterestSelector;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method collapse(Lcom/fleapapa/helper/Category;)V
    .locals 3
    .parameter "cat"

    .prologue
    .line 310
    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/fleapapa/helper/Category;->expanded:Z

    .line 312
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v2, p1}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v2}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 318
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v2, v1}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 314
    .local v0, c:Lcom/fleapapa/helper/Category;
    invoke-virtual {p1, v0}, Lcom/fleapapa/helper/Category;->onPath(Lcom/fleapapa/helper/Category;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method expand(Lcom/fleapapa/helper/Category;)V
    .locals 5
    .parameter "cat"

    .prologue
    .line 320
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/fleapapa/helper/Category;->expanded:Z

    .line 322
    invoke-virtual {p1}, Lcom/fleapapa/helper/Category;->getChilds()Ljava/util/ArrayList;

    move-result-object v1

    .line 323
    .local v1, kids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/InterestSelector;->sort(Ljava/util/ArrayList;)V

    .line 324
    iget-object v3, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v3, p1}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 325
    .local v2, pos:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 329
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 331
    return-void

    .line 325
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 326
    .local v0, c:Lcom/fleapapa/helper/Category;
    sget-boolean v4, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/fleapapa/helper/Category;->interested:Z

    if-eqz v4, :cond_0

    .line 327
    :cond_3
    iget-object v4, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v0, v2}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_0

    .line 329
    .end local v0           #c:Lcom/fleapapa/helper/Category;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 330
    .restart local v0       #c:Lcom/fleapapa/helper/Category;
    iget-boolean v4, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->expand(Lcom/fleapapa/helper/Category;)V

    goto :goto_1
.end method

.method goHelp()V
    .locals 1

    .prologue
    .line 333
    const v0, 0x7f080082

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {p0}, Lcom/fleapapa/util/MyImageButton;->performClick()Z

    .line 334
    return-void
.end method

.method initCategory(Lcom/fleapapa/helper/Category;)V
    .locals 5
    .parameter "cat"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    sget-object v1, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    iget v2, p1, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Interest;

    .line 401
    .local v0, interest:Lcom/fleapapa/helper/Interest;
    if-nez v0, :cond_0

    const/16 v1, 0x63

    :goto_0
    iput v1, p1, Lcom/fleapapa/helper/Category;->dist:I

    .line 402
    if-nez v0, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p1, Lcom/fleapapa/helper/Category;->post:Z

    .line 403
    if-nez v0, :cond_3

    move v1, v3

    :goto_2
    iput-boolean v1, p1, Lcom/fleapapa/helper/Category;->poll:Z

    .line 404
    return-void

    .line 401
    :cond_0
    iget v1, v0, Lcom/fleapapa/helper/Interest;->dist:I

    goto :goto_0

    .line 402
    :cond_1
    iget v1, p1, Lcom/fleapapa/helper/Category;->type:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_1

    .line 403
    :cond_3
    iget v1, p1, Lcom/fleapapa/helper/Category;->type:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method listItems(Ljava/lang/String;I)V
    .locals 2
    .parameter "op"
    .parameter "code"

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fleapapa/helper/ItemList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    const-string v1, "op"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/InterestSelector;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    return-void
.end method

.method protected loadExpands()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 262
    const-string v4, "expands"

    new-array v5, v7, [Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, s:Ljava/lang/String;
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".loadExpands: s=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, ss:[Ljava/lang/String;
    array-length v4, v3

    move v5, v7

    :goto_0
    if-lt v5, v4, :cond_0

    .line 269
    return-void

    .line 265
    :cond_0
    aget-object v0, v3, v5

    .line 266
    .local v0, c:Ljava/lang/String;
    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/fleapapa/helper/Category;->getCategory(I)Lcom/fleapapa/helper/Category;

    move-result-object v1

    .line 267
    .local v1, cat:Lcom/fleapapa/helper/Category;
    if-eqz v1, :cond_1

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/fleapapa/helper/Category;->expanded:Z

    .line 265
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 355
    :goto_0
    :pswitch_0
    return-void

    .line 351
    :pswitch_1
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->goHelp()V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f080089

    const v12, 0x7f080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 49
    sget-object v6, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".onCreate: /"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/fleapapa/util/MyUtil;->profile()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/fleapapa/util/My;->getScreenDimension(Landroid/app/Activity;)V

    .line 53
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->requestWindowFeature(I)Z

    .line 54
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->requestWindowFeature(I)Z

    .line 55
    const v6, 0x7f030010

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "helpTheMost"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/fleapapa/helper/InterestSelector;->helpTheMost:Z

    .line 59
    const-string v6, "hide_unselect"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v11

    :goto_0
    sput-boolean v6, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    .line 60
    sget-object v6, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_0

    sput-boolean v10, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    .line 62
    :cond_0
    const v6, 0x7f08007f

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    .line 63
    new-instance v6, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-direct {v6, p0}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    iput-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    .line 64
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lcom/fleapapa/helper/InterestSelector;->plus:Landroid/graphics/drawable/Drawable;

    .line 67
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lcom/fleapapa/helper/InterestSelector;->minu:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020033

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sput-object v6, Lcom/fleapapa/helper/InterestSelector;->leaf:Landroid/graphics/drawable/Drawable;

    .line 69
    sget-object v6, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 70
    .local v3, ncat:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/fleapapa/helper/InterestSelector;->tcats:Ljava/util/ArrayList;

    .line 71
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_4

    .line 82
    sget-object v6, Lcom/fleapapa/helper/InterestSelector;->tcats:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->sort(Ljava/util/ArrayList;)V

    .line 83
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->loadExpands()V

    .line 84
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->showCategories()V

    .line 86
    invoke-static {}, Lcom/fleapapa/helper/Item;->loadMyItems()V

    .line 88
    const-string v6, "last_position"

    new-array v7, v10, [Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/fleapapa/util/MyUtil;->getPreference(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/fleapapa/util/MyUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, position:I
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v6}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 90
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 93
    :cond_1
    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$1;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$1;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$2;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$2;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v6, 0x7f080085

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$3;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$3;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v6, 0x7f080083

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$4;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$4;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v6, 0x7f080084

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$5;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$5;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v6, 0x7f080086

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$6;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$6;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v6, 0x7f080087

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$7;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$7;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v6, 0x7f080088

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$8;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$8;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0, v13}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$9;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$9;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v6, 0x7f080081

    invoke-virtual {p0, v6}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    new-instance v7, Lcom/fleapapa/helper/InterestSelector$10;

    invoke-direct {v7, p0}, Lcom/fleapapa/helper/InterestSelector$10;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0, v13}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/fleapapa/util/MyImageButton;

    sget v7, Lcom/fleapapa/util/My;->uid:I

    if-lez v7, :cond_6

    const v7, 0x7f020056

    :goto_2
    invoke-virtual {v6, v7}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 192
    invoke-static {p0, v11}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 193
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 194
    .local v1, handler:Landroid/os/Handler;
    new-instance v5, Lcom/fleapapa/helper/InterestSelector$11;

    invoke-direct {v5, p0}, Lcom/fleapapa/helper/InterestSelector$11;-><init>(Lcom/fleapapa/helper/InterestSelector;)V

    .line 200
    .local v5, runner:Ljava/lang/Runnable;
    new-instance v6, Lcom/fleapapa/helper/InterestSelector$12;

    const-string v7, "flea_hello"

    invoke-direct {v6, p0, v7, v1, v5}, Lcom/fleapapa/helper/InterestSelector$12;-><init>(Lcom/fleapapa/helper/InterestSelector;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 205
    invoke-virtual {v6}, Lcom/fleapapa/helper/InterestSelector$12;->start()V

    .line 207
    sput-boolean v10, Lcom/fleapapa/helper/Interest;->changed:Z

    .line 209
    invoke-static {p0}, Lcom/fleapapa/helper/Monitor;->start(Landroid/content/Context;)V

    .line 212
    iget-boolean v6, p0, Lcom/fleapapa/helper/InterestSelector;->helpTheMost:Z

    if-eqz v6, :cond_2

    .line 213
    invoke-virtual {p0, v12}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    invoke-virtual {p0}, Lcom/fleapapa/util/MyImageButton;->performClick()Z

    .line 214
    :cond_2
    return-void

    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #i:I
    .end local v3           #ncat:I
    .end local v4           #position:I
    .end local v5           #runner:Ljava/lang/Runnable;
    .restart local p0
    :cond_3
    move v6, v10

    .line 59
    goto/16 :goto_0

    .line 72
    .restart local v2       #i:I
    .restart local v3       #ncat:I
    :cond_4
    sget-object v6, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 74
    .local v0, cat:Lcom/fleapapa/helper/Category;
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->initCategory(Lcom/fleapapa/helper/Category;)V

    .line 76
    iget-object v6, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    if-eqz v6, :cond_5

    .line 77
    iget v6, v0, Lcom/fleapapa/helper/Category;->code:I

    if-eqz v6, :cond_5

    .line 78
    iget-object v6, v0, Lcom/fleapapa/helper/Category;->parent:Lcom/fleapapa/helper/Category;

    iget v6, v6, Lcom/fleapapa/helper/Category;->code:I

    if-nez v6, :cond_5

    .line 79
    sget-object v6, Lcom/fleapapa/helper/InterestSelector;->tcats:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 180
    .end local v0           #cat:Lcom/fleapapa/helper/Category;
    .restart local v4       #position:I
    :cond_6
    const v7, 0x7f020055

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector;->flea:Lcom/fleapapa/helper/Flea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector;->flea:Lcom/fleapapa/helper/Flea;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fleapapa/helper/Flea;->stale:Z

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->saveExpands()V

    .line 246
    sget-boolean v0, Lcom/fleapapa/util/My;->isGuest:Z

    if-eqz v0, :cond_1

    sput v3, Lcom/fleapapa/util/My;->uid:I

    .line 247
    :cond_1
    sput-boolean v3, Lcom/fleapapa/util/My;->isGuest:Z

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-boolean v3, p0, Lcom/fleapapa/helper/InterestSelector;->helpTheMost:Z

    .line 237
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "last_position"

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 238
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "hide_unselect"

    aput-object v1, v0, v3

    sget-boolean v1, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-eqz v1, :cond_0

    move v1, v4

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    return-void

    :cond_0
    move v1, v3

    .line 238
    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->toggleButtons(Z)V

    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 216
    sget-object v0, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/fleapapa/helper/InterestSelector;->helpTheMost:Z

    if-eqz v1, :cond_2

    const v1, 0x7f02002d

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/fleapapa/helper/InterestSelector;->setFeatureDrawableResource(II)V

    .line 219
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->showTitle()V

    .line 220
    sget-boolean v0, Lcom/fleapapa/helper/Interest;->changed:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/fleapapa/helper/Interest;->save()V

    .line 222
    iget-object v0, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 225
    :cond_0
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->setButtonsHider()V

    .line 229
    iget-boolean v0, p0, Lcom/fleapapa/helper/InterestSelector;->helpTheMost:Z

    if-nez v0, :cond_1

    .line 230
    invoke-static {}, Lcom/fleapapa/util/My;->bootstrapHours()J

    move-result-wide v0

    const-wide/16 v2, 0xf0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-static {}, Lcom/fleapapa/util/My;->isEmulator()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->finish()V

    .line 232
    :cond_1
    return-void

    .line 218
    :cond_2
    const v1, 0x7f02002a

    goto :goto_0
.end method

.method protected saveExpands()V
    .locals 7

    .prologue
    .line 251
    const-string v3, ""

    .line 252
    .local v3, s:Ljava/lang/String;
    sget-object v4, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 253
    .local v2, ncat:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 258
    sget-object v4, Lcom/fleapapa/util/My;->tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/fleapapa/helper/InterestSelector;->WHO:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".saveExpands: s=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "expands"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v4}, Lcom/fleapapa/util/MyUtil;->putPreference([Ljava/lang/String;)V

    .line 260
    return-void

    .line 254
    :cond_0
    sget-object v4, Lcom/fleapapa/helper/Category;->categories:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 255
    .local v0, cat:Lcom/fleapapa/helper/Category;
    iget-boolean v4, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v4, :cond_1

    .line 256
    const-string v4, ","

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Lcom/fleapapa/helper/Category;->code:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 253
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method setButtonsHider()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method setWTF()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 282
    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-lez v0, :cond_0

    const v0, 0x7f0600a9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/fleapapa/util/My;->user:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/util/MyImageButton;

    sget v1, Lcom/fleapapa/util/My;->uid:I

    if-lez v1, :cond_1

    const v1, 0x7f020056

    :goto_1
    invoke-virtual {v0, v1}, Lcom/fleapapa/util/MyImageButton;->setImageResource(I)V

    .line 284
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/fleapapa/util/MyImageButton;

    sget v0, Lcom/fleapapa/util/My;->uid:I

    if-lez v0, :cond_2

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/fleapapa/util/MyImageButton;->setVisibility(I)V

    .line 285
    return-void

    .line 282
    .restart local p0
    :cond_0
    const v0, 0x7f0600a8

    goto :goto_0

    .line 283
    :cond_1
    const v1, 0x7f020055

    goto :goto_1

    .end local p0
    :cond_2
    move v0, v3

    .line 284
    goto :goto_2
.end method

.method showCategories()V
    .locals 3

    .prologue
    .line 287
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector;->lview:Landroid/widget/ListView;

    sget-boolean v2, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-eqz v2, :cond_2

    const v2, 0x7f020070

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundResource(I)V

    .line 288
    iget-object v1, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v1}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->clear()V

    .line 290
    sget-object v1, Lcom/fleapapa/helper/InterestSelector;->tcats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    sget-object v1, Lcom/fleapapa/helper/InterestSelector;->tcats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 298
    return-void

    .line 287
    :cond_2
    const v2, 0x7f020071

    goto :goto_0

    .line 290
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 291
    .local v0, cat:Lcom/fleapapa/helper/Category;
    iget-boolean v2, v0, Lcom/fleapapa/helper/Category;->interested:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/fleapapa/helper/InterestSelector;->hideUnselect:Z

    if-nez v2, :cond_0

    .line 292
    :cond_4
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector;->adapter:Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;

    invoke-virtual {v2, v0}, Lcom/fleapapa/helper/InterestSelector$CategoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 295
    .end local v0           #cat:Lcom/fleapapa/helper/Category;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fleapapa/helper/Category;

    .line 296
    .restart local v0       #cat:Lcom/fleapapa/helper/Category;
    iget-boolean v2, v0, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v2, :cond_1

    .line 297
    invoke-virtual {p0, v0}, Lcom/fleapapa/helper/InterestSelector;->expand(Lcom/fleapapa/helper/Category;)V

    goto :goto_2
.end method

.method showTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v5, ". "

    .line 271
    invoke-static {p0, v6}, Lcom/fleapapa/util/MyUtil;->progress(Landroid/app/Activity;Z)V

    .line 273
    const-string v2, ". "

    invoke-static {v5}, Lcom/fleapapa/helper/Event;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, s1:Ljava/lang/String;
    const v2, 0x7f060072

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/InterestSelector;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lcom/fleapapa/helper/Interest;->interests:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, s2:Ljava/lang/String;
    const-string v2, ". "

    invoke-static {v0, v5, v1}, Lcom/fleapapa/util/MyUtil;->concat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/fleapapa/helper/InterestSelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 277
    sget-object v2, Lcom/fleapapa/helper/Event;->events:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 278
    const-string v2, ". "

    invoke-static {v5}, Lcom/fleapapa/helper/Event;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/fleapapa/util/MyNotify;->notify(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    :cond_0
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->setWTF()V

    .line 280
    return-void
.end method

.method sign_in_out()V
    .locals 2

    .prologue
    .line 416
    const/4 v0, 0x0

    const/16 v1, 0x3e7

    invoke-static {p0, v0, v1}, Lcom/fleapapa/helper/Signin;->sign_in_out(Landroid/app/Activity;ZI)V

    .line 417
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->setWTF()V

    .line 418
    return-void
.end method

.method sort(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fleapapa/helper/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, cats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/fleapapa/helper/Category;>;"
    return-void
.end method

.method toggleButtons(Z)V
    .locals 3
    .parameter "hide"

    .prologue
    const/16 v2, 0x8

    .line 421
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lcom/fleapapa/helper/InterestSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    .local v0, hsv:Landroid/view/View;
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 423
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector;->setButtonsHider()V

    .line 428
    :goto_0
    return-void

    .line 427
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

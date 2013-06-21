.class public Lorg/bpiette/app/SelectLocationActivity;
.super Landroid/app/Activity;
.source "SelectLocationActivity.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private radioClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, "SelectLocationActivity"

    iput-object v0, p0, Lorg/bpiette/app/SelectLocationActivity;->LOG_TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lorg/bpiette/app/SelectLocationActivity$1;

    invoke-direct {v0, p0}, Lorg/bpiette/app/SelectLocationActivity$1;-><init>(Lorg/bpiette/app/SelectLocationActivity;)V

    iput-object v0, p0, Lorg/bpiette/app/SelectLocationActivity;->radioClickListener:Landroid/view/View$OnClickListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v9, 0x7f030004

    invoke-virtual {p0, v9}, Lorg/bpiette/app/SelectLocationActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lorg/bpiette/app/SelectLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, current_location:Ljava/lang/String;
    const v9, 0x7f060006

    invoke-virtual {p0, v9}, Lorg/bpiette/app/SelectLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 45
    .local v5, layout:Landroid/widget/LinearLayout;
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v7, v9, [Ljava/lang/String;

    .line 46
    .local v7, locStrings:[Ljava/lang/String;
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 47
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/bpiette/app/Location;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lt v2, v9, :cond_0

    .line 51
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 54
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getCategories()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lt v4, v9, :cond_1

    .line 79
    return-void

    .line 49
    .end local v4           #j:I
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bpiette/app/Location;

    iget-object v9, v9, Lorg/bpiette/app/Location;->location:Ljava/lang/String;

    aput-object v9, v7, v2

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .restart local v4       #j:I
    :cond_1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 57
    .local v0, catHeader:Landroid/widget/TextView;
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getCategories()[Ljava/lang/String;

    move-result-object v9

    aget-object v9, v9, v4

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lt v2, v9, :cond_2

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_2
    invoke-static {}, Lorg/bpiette/app/TaxiDB;->getLocations()Ljava/util/Map;

    move-result-object v9

    aget-object v10, v7, v2

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bpiette/app/Location;

    .line 64
    .local v6, loc:Lorg/bpiette/app/Location;
    iget v9, v6, Lorg/bpiette/app/Location;->categoryID:I

    if-ne v9, v4, :cond_4

    .line 66
    new-instance v8, Landroid/widget/RadioButton;

    invoke-direct {v8, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 67
    .local v8, radio:Landroid/widget/RadioButton;
    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v9, p0, Lorg/bpiette/app/SelectLocationActivity;->radioClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    aget-object v9, v7, v2

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 72
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 75
    :cond_3
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    .end local v8           #radio:Landroid/widget/RadioButton;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

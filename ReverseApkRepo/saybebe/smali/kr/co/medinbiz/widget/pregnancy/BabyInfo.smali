.class public Lkr/co/medinbiz/widget/pregnancy/BabyInfo;
.super Ljava/lang/Object;
.source "BabyInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private baby_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/BabyXmlData;",
            ">;"
        }
    .end annotation
.end field

.field private baby_month:[I

.field private mContext:Landroid/content/Context;

.field private month:I

.field private paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

.field private result:Landroid/widget/TextView;

.field private scroll:Landroid/widget/ScrollView;

.field private title_bar:Landroid/widget/TextView;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "month"

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x10

    const/16 v5, 0xc

    const/16 v4, 0x8

    const/4 v3, 0x4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v1, 0x19

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v3, v1, v2

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    aput v5, v1, v2

    aput v6, v1, v3

    const/4 v2, 0x5

    aput v7, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x18

    aput v3, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x1c

    aput v3, v1, v2

    const/16 v2, 0x20

    aput v2, v1, v4

    const/16 v2, 0x9

    const/16 v3, 0x24

    aput v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x28

    aput v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x2c

    aput v3, v1, v2

    .line 24
    const/16 v2, 0x30

    aput v2, v1, v5

    const/16 v2, 0xd

    const/16 v3, 0x34

    aput v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x38

    aput v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x3c

    aput v3, v1, v2

    const/16 v2, 0x40

    aput v2, v1, v6

    const/16 v2, 0x11

    const/16 v3, 0x44

    aput v3, v1, v2

    const/16 v2, 0x12

    const/16 v3, 0x48

    aput v3, v1, v2

    const/16 v2, 0x13

    const/16 v3, 0x4c

    aput v3, v1, v2

    const/16 v2, 0x50

    aput v2, v1, v7

    const/16 v2, 0x15

    const/16 v3, 0x54

    aput v3, v1, v2

    const/16 v2, 0x16

    const/16 v3, 0x58

    aput v3, v1, v2

    const/16 v2, 0x17

    const/16 v3, 0x5c

    aput v3, v1, v2

    const/16 v2, 0x18

    const/16 v3, 0x60

    aput v3, v1, v2

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_month:[I

    .line 32
    iput-object p1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->mContext:Landroid/content/Context;

    .line 35
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/LayoutInflater;

    .line 36
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 37
    sget v1, Lkr/co/medinbiz/R$layout;->preg_info_b_160:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    .line 42
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->scroll:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->scroll:Landroid/widget/ScrollView;

    .line 43
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_week1_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 44
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_week2_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 46
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_week3_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 48
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->baby_week4_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 50
    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->result:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->title_bar:Landroid/widget/TextView;

    .line 53
    iput p2, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->month:I

    .line 54
    new-instance v1, Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    .line 55
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->initInfo(I)V

    .line 57
    return-void

    .line 39
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->preg_info_b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method private babyInfo(I)V
    .locals 8
    .parameter "month"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->result:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->baby_info_header1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lkr/co/medinbiz/R$string;->baby_info_header2:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->boy_weight:Ljava/lang/String;

    aput-object v0, v4, v5

    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->boy_height:Ljava/lang/String;

    aput-object v0, v4, v6

    .line 71
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lkr/co/medinbiz/R$string;->baby_info_header3:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->girl_weight:Ljava/lang/String;

    aput-object v0, v4, v5

    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->girl_height:Ljava/lang/String;

    aput-object v0, v4, v6

    .line 74
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->height_tip:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->food_tip:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/BabyXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/BabyXmlData;->health_tip:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method

.method private initInfo(I)V
    .locals 5
    .parameter "week"

    .prologue
    .line 64
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    invoke-virtual {v0}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->info_baby()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_array:Ljava/util/ArrayList;

    .line 65
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->title_bar:Landroid/widget/TextView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->childcare_month_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->month:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->baby_month:[I

    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->month:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->babyInfo(I)V

    .line 67
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 84
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->scroll:Landroid/widget/ScrollView;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 86
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->baby_week1_btn:I

    if-ne v0, v1, :cond_1

    .line 87
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->initInfo(I)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->baby_week2_btn:I

    if-ne v0, v1, :cond_2

    .line 89
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->initInfo(I)V

    goto :goto_0

    .line 90
    :cond_2
    sget v1, Lkr/co/medinbiz/R$id;->baby_week3_btn:I

    if-ne v0, v1, :cond_3

    .line 91
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->initInfo(I)V

    goto :goto_0

    .line 92
    :cond_3
    sget v1, Lkr/co/medinbiz/R$id;->baby_week4_btn:I

    if-ne v0, v1, :cond_0

    .line 93
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/BabyInfo;->initInfo(I)V

    goto :goto_0
.end method

.class public Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;
.super Ljava/lang/Object;
.source "PregnancyInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

.field private preg_array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lkr/co/medinbiz/dto/PregXmlData;",
            ">;"
        }
    .end annotation
.end field

.field private result:Landroid/widget/TextView;

.field private scroll:Landroid/widget/ScrollView;

.field private title_bar:Landroid/widget/TextView;

.field private week:I

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "month"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->mContext:Landroid/content/Context;

    .line 33
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    check-cast v0, Landroid/view/LayoutInflater;

    .line 34
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0xa0

    if-ne v1, v2, :cond_0

    .line 35
    sget v1, Lkr/co/medinbiz/R$layout;->preg_info_p_160:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    .line 40
    :goto_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->scroll:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->scroll:Landroid/widget/ScrollView;

    .line 41
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->left:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->right:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->result:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->result:Landroid/widget/TextView;

    .line 44
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    sget v2, Lkr/co/medinbiz/R$id;->title_bar:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->title_bar:Landroid/widget/TextView;

    .line 45
    add-int/lit8 v1, p2, -0x1

    iput v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    .line 46
    new-instance v1, Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    invoke-direct {v1, p1}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    .line 47
    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->initInfo(I)V

    .line 49
    return-void

    .line 37
    :cond_0
    sget v1, Lkr/co/medinbiz/R$layout;->preg_info_p:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    goto :goto_0
.end method

.method private initInfo(I)V
    .locals 5
    .parameter "week"

    .prologue
    .line 56
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->scroll:Landroid/widget/ScrollView;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 57
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->paser:Lkr/co/medinbiz/etc/PregnancyXmlPaser;

    invoke-virtual {v0}, Lkr/co/medinbiz/etc/PregnancyXmlPaser;->info_preg()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    .line 58
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->title_bar:Landroid/widget/TextView;

    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lkr/co/medinbiz/R$string;->pregnancy_week_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-direct {p0, p1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->pregInfo(I)V

    .line 60
    return-void
.end method

.method private pregInfo(I)V
    .locals 3
    .parameter "week"

    .prologue
    .line 63
    iget-object v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->result:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->baby_sub:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->baby_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->mom_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->mom_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->body_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->body_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->food_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->food_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->cau_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->cau_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->life_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->life_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 75
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->today_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->today_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->babytip_sub:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 78
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->preg_array:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/PregXmlData;

    iget-object v0, v0, Lkr/co/medinbiz/dto/PregXmlData;->babytip_note:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 84
    .local v0, id:I
    sget v1, Lkr/co/medinbiz/R$id;->left:I

    if-ne v0, v1, :cond_1

    .line 85
    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    if-eqz v1, :cond_0

    .line 86
    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->initInfo(I)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    sget v1, Lkr/co/medinbiz/R$id;->right:I

    if-ne v0, v1, :cond_0

    .line 89
    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    const/16 v2, 0x27

    if-eq v1, v2, :cond_0

    .line 90
    iget v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->week:I

    invoke-direct {p0, v1}, Lkr/co/medinbiz/widget/pregnancy/PregnancyInfo;->initInfo(I)V

    goto :goto_0
.end method

.class public Lkr/co/medinbiz/widget/sos/SosPhoneBook;
.super Lkr/co/medinbiz/widget/sos/SosCommon;
.source "SosPhoneBook.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private database:Lkr/co/medinbiz/helper/DataBaseManager;

.field private names:[Landroid/widget/EditText;

.field private numbers:[Landroid/widget/EditText;

.field private widget:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x5

    .line 24
    invoke-direct {p0}, Lkr/co/medinbiz/widget/sos/SosCommon;-><init>()V

    .line 25
    iput-object p1, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->mContext:Landroid/content/Context;

    .line 27
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Landroid/view/LayoutInflater;

    .line 28
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {p1}, Lkr/co/medinbiz/util/Dip;->getMyDip(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_0

    .line 29
    sget v5, Lkr/co/medinbiz/R$layout;->setting_phonebook_160:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    .line 34
    :goto_0
    new-instance v5, Lkr/co/medinbiz/helper/DataBaseManager;

    invoke-direct {v5, p1}, Lkr/co/medinbiz/helper/DataBaseManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->database:Lkr/co/medinbiz/helper/DataBaseManager;

    .line 36
    new-array v5, v8, [Landroid/widget/EditText;

    iput-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    .line 37
    new-array v5, v8, [Landroid/widget/EditText;

    iput-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->numbers:[Landroid/widget/EditText;

    .line 38
    new-array v2, v8, [I

    sget v5, Lkr/co/medinbiz/R$id;->name01:I

    aput v5, v2, v7

    sget v5, Lkr/co/medinbiz/R$id;->name02:I

    aput v5, v2, v9

    sget v5, Lkr/co/medinbiz/R$id;->name03:I

    aput v5, v2, v10

    sget v5, Lkr/co/medinbiz/R$id;->name04:I

    aput v5, v2, v11

    const/4 v5, 0x4

    .line 39
    sget v6, Lkr/co/medinbiz/R$id;->name05:I

    aput v6, v2, v5

    .line 40
    .local v2, name_ids:[I
    new-array v3, v8, [I

    sget v5, Lkr/co/medinbiz/R$id;->phone01:I

    aput v5, v3, v7

    sget v5, Lkr/co/medinbiz/R$id;->phone02:I

    aput v5, v3, v9

    sget v5, Lkr/co/medinbiz/R$id;->phone03:I

    aput v5, v3, v10

    .line 41
    sget v5, Lkr/co/medinbiz/R$id;->phone04:I

    aput v5, v3, v11

    const/4 v5, 0x4

    sget v6, Lkr/co/medinbiz/R$id;->phone05:I

    aput v6, v3, v5

    .line 43
    .local v3, number_ids:[I
    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->save:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    sget v6, Lkr/co/medinbiz/R$id;->cancle:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v8, :cond_1

    .line 50
    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->database:Lkr/co/medinbiz/helper/DataBaseManager;

    invoke-virtual {v5}, Lkr/co/medinbiz/helper/DataBaseManager;->getSosAllRow()Ljava/util/ArrayList;

    move-result-object v4

    .line 51
    .local v4, sos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/SosData;>;"
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v0, v5, :cond_2

    .line 55
    return-void

    .line 31
    .end local v0           #i:I
    .end local v2           #name_ids:[I
    .end local v3           #number_ids:[I
    .end local v4           #sos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/SosData;>;"
    :cond_0
    sget v5, Lkr/co/medinbiz/R$layout;->setting_phonebook:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    goto :goto_0

    .line 46
    .restart local v0       #i:I
    .restart local v2       #name_ids:[I
    .restart local v3       #number_ids:[I
    :cond_1
    iget-object v6, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    aget v7, v2, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v6, v0

    .line 47
    iget-object v6, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->numbers:[Landroid/widget/EditText;

    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    aget v7, v3, v0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    aput-object v5, v6, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    .restart local v4       #sos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lkr/co/medinbiz/dto/SosData;>;"
    :cond_2
    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    aget-object v6, v5, v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkr/co/medinbiz/dto/SosData;

    iget-object v5, v5, Lkr/co/medinbiz/dto/SosData;->name:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v5, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->numbers:[Landroid/widget/EditText;

    aget-object v6, v5, v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkr/co/medinbiz/dto/SosData;

    iget-object v5, v5, Lkr/co/medinbiz/dto/SosData;->number:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getWidget()Landroid/view/View;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->widget:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 64
    .local v1, id:I
    sget v2, Lkr/co/medinbiz/R$id;->save:I

    if-ne v1, v2, :cond_3

    .line 65
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->database:Lkr/co/medinbiz/helper/DataBaseManager;

    invoke-virtual {v2}, Lkr/co/medinbiz/helper/DataBaseManager;->sosDelete()I

    .line 66
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 71
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->mContext:Landroid/content/Context;

    sget v4, Lkr/co/medinbiz/R$string;->message_saved:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 75
    .end local v0           #i:I
    :cond_0
    :goto_1
    return-void

    .line 67
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->numbers:[Landroid/widget/EditText;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 68
    iget-object v2, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->database:Lkr/co/medinbiz/helper/DataBaseManager;

    iget-object v3, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->names:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->numbers:[Landroid/widget/EditText;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lkr/co/medinbiz/helper/DataBaseManager;->sosInsert(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0           #i:I
    :cond_3
    sget v2, Lkr/co/medinbiz/R$id;->cancle:I

    if-ne v1, v2, :cond_0

    .line 73
    invoke-virtual {p0}, Lkr/co/medinbiz/widget/sos/SosPhoneBook;->setMainWidget()V

    goto :goto_1
.end method

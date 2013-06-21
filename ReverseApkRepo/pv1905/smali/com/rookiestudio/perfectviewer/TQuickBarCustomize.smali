.class public Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;
.super Landroid/app/Activity;
.source "TQuickBarCustomize.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field private AddButton:Landroid/widget/Button;

.field private AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

.field private DownButton:Landroid/widget/Button;

.field private FunctionListView:Landroid/widget/ListView;

.field private RemoveButton:Landroid/widget/Button;

.field private ResetButton:Landroid/widget/Button;

.field private SelectIndex1:I

.field private SelectIndex2:I

.field private SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

.field private SelectedListView:Landroid/widget/ListView;

.field private UpButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    .line 37
    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    .line 38
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex1:I

    .line 39
    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    .line 27
    return-void
.end method

.method private AddItem(I)V
    .locals 4
    .parameter "Index"

    .prologue
    .line 244
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    .line 248
    .local v0, ButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 253
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    iget v3, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    invoke-static {v3}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 254
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    goto :goto_0

    .line 249
    :cond_2
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v3, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v3

    iget v3, v3, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    if-eq v2, v3, :cond_0

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static CreateQuickBarCustomize(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, aQuickBarCustomize:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private MoveItemDown(I)V
    .locals 3
    .parameter "Index"

    .prologue
    .line 273
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    .line 274
    .local v0, ButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Delete(I)V

    .line 275
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Insert(ILcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 276
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    .line 277
    return-void
.end method

.method private MoveItemUp(I)V
    .locals 3
    .parameter "Index"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    .line 266
    .local v0, ButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Delete(I)V

    .line 267
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Insert(ILcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 268
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    .line 269
    return-void
.end method

.method private RemoveItem(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Delete(I)V

    .line 260
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    .line 261
    return-void
.end method


# virtual methods
.method public CreateAvailableFunctionsList()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Clear()V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 82
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/4 v1, 0x4

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 83
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 84
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 87
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 88
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 89
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x9

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 90
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 97
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 98
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 99
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x13

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 100
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 101
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x11

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 102
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x12

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 103
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x15

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 104
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x16

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 105
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 109
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x1c

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 110
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 111
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 113
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x21

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 114
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x22

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 115
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 116
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x24

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 117
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 118
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x26

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 119
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2b

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 120
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x27

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 121
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x28

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 122
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x29

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 123
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2a

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 124
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 125
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 126
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2e

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 127
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x2f

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 128
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 129
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x31

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 130
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    const/16 v1, 0x32

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 131
    return-void

    .line 79
    :cond_0
    new-instance v0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;-><init>(Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    goto/16 :goto_0
.end method

.method public CreateSelectedFunctionsList()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Clear()V

    .line 139
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 142
    return-void

    .line 137
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-direct {v1, p0, p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;-><init>(Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    goto :goto_0

    .line 140
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, -0x1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c007b

    if-ne v0, v1, :cond_1

    .line 175
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex1:I

    if-ltz v0, :cond_0

    .line 176
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex1:I

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AddItem(I)V

    .line 177
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    .line 178
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex1:I

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c007c

    if-ne v0, v1, :cond_2

    .line 181
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    if-ltz v0, :cond_0

    .line 182
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->RemoveItem(I)V

    .line 183
    iput v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    goto :goto_0

    .line 185
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c007d

    if-ne v0, v1, :cond_3

    .line 186
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    if-lez v0, :cond_0

    .line 187
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->MoveItemUp(I)V

    .line 188
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c007e

    if-ne v0, v1, :cond_4

    .line 191
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 192
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    invoke-direct {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->MoveItemDown(I)V

    .line 193
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0c007f

    if-ne v0, v1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->CreateSelectedFunctionsList()V

    .line 197
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->setContentView(I)V

    .line 45
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 46
    const v0, 0x7f0c007b

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AddButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0c007c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->RemoveButton:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->RemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0c007d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->UpButton:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->UpButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f0c007e

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->DownButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->DownButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->ResetButton:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->ResetButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->CreateAvailableFunctionsList()V

    .line 59
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->CreateSelectedFunctionsList()V

    .line 60
    const v0, 0x7f0c0079

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    .line 61
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->FunctionListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 67
    const v0, 0x7f0c007a

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    .line 68
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 72
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 204
    .local v0, aListView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getId()I

    move-result v2

    const v3, 0x7f0c0079

    if-ne v2, v3, :cond_1

    .line 205
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 208
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex1:I

    .line 209
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, p3}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v2

    iput-boolean v5, v2, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    .line 227
    :goto_1
    return-void

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AvailableFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v2

    iput-boolean v4, v2, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 215
    iput p3, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectIndex2:I

    .line 216
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, p3}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v2

    iput-boolean v5, v2, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    goto :goto_1

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v2

    iput-boolean v4, v2, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    .line 234
    .local v0, aListView:Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/ListView;->getId()I

    move-result v1

    const v2, 0x7f0c0079

    if-ne v1, v2, :cond_0

    .line 235
    invoke-direct {p0, p3}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->AddItem(I)V

    .line 239
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 237
    :cond_0
    invoke-direct {p0, p3}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->RemoveItem(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 146
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 150
    const-string v1, "perfect_viewer_settings"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/rookiestudio/perfectviewer/Config;->SaveQuickBarButtons(Landroid/content/SharedPreferences;)V

    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 152
    return-void

    .line 148
    :cond_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->QuickBarFunctionList:Ljava/util/List;

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;->SelectedFunctionsList:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;

    invoke-virtual {v2, v0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v2

    iget v2, v2, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

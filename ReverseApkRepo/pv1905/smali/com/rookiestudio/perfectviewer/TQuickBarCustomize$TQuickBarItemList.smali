.class Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;
.super Landroid/widget/BaseAdapter;
.source "TQuickBarCustomize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TQuickBarItemList"
.end annotation


# instance fields
.field private ButtonInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->this$0:Lcom/rookiestudio/perfectviewer/TQuickBarCustomize;

    .line 291
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    .line 294
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->context:Landroid/content/Context;

    .line 295
    return-void
.end method


# virtual methods
.method public Add(IILjava/lang/String;)V
    .locals 2
    .parameter "FI"
    .parameter "II"
    .parameter "Name"

    .prologue
    .line 318
    new-instance v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;-><init>()V

    .line 319
    .local v0, NewButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    iput p1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    .line 320
    iput p2, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    .line 321
    iput-object p3, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public Add(Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V
    .locals 1
    .parameter "NewButtonInfo"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 314
    return-void
.end method

.method public Delete(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 333
    return-void
.end method

.method public Insert(ILcom/rookiestudio/perfectviewer/TQuickButtonInfo;)V
    .locals 1
    .parameter "Index"
    .parameter "aButtonInfo"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 306
    const/4 v0, 0x0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->ButtonInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 343
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 349
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->context:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v3, p2

    .line 367
    .end local p2
    .local v3, convertView:Landroid/view/View;
    :goto_0
    return-object v3

    .line 352
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 353
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->context:Landroid/content/Context;

    .line 354
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 353
    check-cast v4, Landroid/view/LayoutInflater;

    .line 355
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03002c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 357
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TQuickBarCustomize$TQuickBarItemList;->getItem(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    move-result-object v0

    .line 358
    .local v0, ButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    const v5, 0x7f0c0092

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 359
    .local v1, FileIcon:Landroid/widget/ImageView;
    iget v5, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    const v5, 0x7f0c0095

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    .line 361
    .local v2, FileNameText:Landroid/widget/CheckedTextView;
    iget-object v5, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-boolean v5, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    if-eqz v5, :cond_2

    .line 363
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :goto_1
    move-object v3, p2

    .line 367
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto :goto_0

    .line 365
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1
.end method

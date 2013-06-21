.class Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;
.super Landroid/widget/BaseAdapter;
.source "TMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "THistoryData"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 952
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 976
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 956
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 957
    const/4 v0, 0x1

    .line 959
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/THistoryItem;
    .locals 4
    .parameter "arg0"

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 965
    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    .line 967
    :cond_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 968
    new-instance v0, Lcom/rookiestudio/baseclass/THistoryItem;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/rookiestudio/baseclass/THistoryItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 969
    .local v0, EmptyHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    goto :goto_0

    .line 971
    .end local v0           #EmptyHistoryItem:Lcom/rookiestudio/baseclass/THistoryItem;
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/THistoryItem;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->getItem(I)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 979
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    .line 983
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->getItem(I)Lcom/rookiestudio/baseclass/THistoryItem;

    move-result-object v6

    .line 984
    .local v6, entry:Lcom/rookiestudio/baseclass/THistoryItem;
    if-nez p2, :cond_0

    .line 985
    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$THistoryData;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03001a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 987
    :cond_0
    const v7, 0x7f0c003b

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 988
    .local v1, FileIcon:Landroid/widget/ImageView;
    iget-object v7, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 989
    .local v3, FolderName:Ljava/lang/String;
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 990
    const v7, 0x7f020034

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1005
    :goto_0
    const v7, 0x7f0c003d

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1006
    .local v2, FileNameText:Landroid/widget/TextView;
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1007
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1008
    iget-object v7, v6, Lcom/rookiestudio/baseclass/THistoryItem;->FolderName:Ljava/lang/String;

    invoke-static {v7}, Lcom/rookiestudio/perfectviewer/TUtility;->GetSMBDisplayPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    sget-object v7, Lcom/rookiestudio/perfectviewer/Config;->HistoryList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1010
    const v7, 0x7f0c0053

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1011
    .local v0, AddDateText:Landroid/widget/TextView;
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v7

    iget-object v8, v6, Lcom/rookiestudio/baseclass/THistoryItem;->AddDate:Ljava/util/Date;

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    sget-object v7, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v8, 0x7f0a0088

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, PageFormat:Ljava/lang/String;
    const v7, 0x7f0c0054

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1014
    .local v5, PageNoText:Landroid/widget/TextView;
    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, v6, Lcom/rookiestudio/baseclass/THistoryItem;->PageNo:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .end local v0           #AddDateText:Landroid/widget/TextView;
    .end local v4           #PageFormat:Ljava/lang/String;
    .end local v5           #PageNoText:Landroid/widget/TextView;
    :cond_1
    return-object p2

    .line 991
    .end local v2           #FileNameText:Landroid/widget/TextView;
    :cond_2
    const-string v7, ".rar"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, ".cbr"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 992
    :cond_3
    const v7, 0x7f020033

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 993
    :cond_4
    const-string v7, ".zip"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, ".cbz"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 994
    :cond_5
    const v7, 0x7f020037

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 995
    :cond_6
    const-string v7, ".7z"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ".cb7"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 996
    :cond_7
    const v7, 0x7f02001c

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 997
    :cond_8
    const-string v7, ".lzh"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 998
    const v7, 0x7f02002a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 999
    :cond_9
    const-string v7, ".pdf"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1000
    const v7, 0x7f02002d

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1002
    :cond_a
    const v7, 0x7f02003a

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

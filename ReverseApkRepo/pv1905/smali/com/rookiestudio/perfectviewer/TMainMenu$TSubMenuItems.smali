.class Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;
.super Landroid/widget/BaseAdapter;
.source "TMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TSubMenuItems"
.end annotation


# instance fields
.field private MenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 849
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 848
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    .line 851
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 888
    return-void
.end method

.method public addItem(Ljava/lang/String;II)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;
    .locals 2
    .parameter "Text"
    .parameter "Icon"
    .parameter "Type"

    .prologue
    .line 858
    new-instance v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-direct {v0, v1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    .line 859
    .local v0, SubMenuItem:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;
    iput-object p1, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    .line 860
    iput p2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuIcon:I

    .line 861
    iput p3, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    .line 862
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 868
    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->getItem(I)Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 891
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 876
    const/4 v0, 0x0

    .line 878
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 895
    const/4 v1, 0x0

    .line 896
    .local v1, holder:Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->MenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;

    .line 897
    .local v0, entry:Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;
    if-nez p2, :cond_4

    .line 898
    new-instance v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;

    .end local v1           #holder:Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    invoke-direct {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;-><init>(Lcom/rookiestudio/perfectviewer/TMainMenu;)V

    .line 899
    .restart local v1       #holder:Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    if-ne v2, v4, :cond_1

    .line 900
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002b

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 901
    const v2, 0x7f0c0094

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 902
    iput v4, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    .line 916
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 918
    const v2, 0x7f0c0092

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->Icon:Landroid/widget/ImageView;

    .line 922
    :goto_1
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    iput v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    .line 923
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->Icon:Landroid/widget/ImageView;

    iget v3, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuIcon:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 924
    iget-object v2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->SetText(Ljava/lang/String;)V

    .line 925
    iget v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    if-ne v2, v4, :cond_b

    .line 926
    if-nez p1, :cond_5

    .line 927
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->AutoSinglePage:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 948
    :cond_0
    :goto_2
    return-object p2

    .line 903
    :cond_1
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    if-ne v2, v5, :cond_2

    .line 904
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002c

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 905
    const v2, 0x7f0c0095

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckedTextView;

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 906
    iput v5, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    goto :goto_0

    .line 907
    :cond_2
    iget v2, v0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItem;->MenuType:I

    if-ne v2, v7, :cond_3

    .line 908
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002d

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 909
    const v2, 0x7f0c0093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->textView:Landroid/widget/TextView;

    .line 910
    iput v7, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    goto :goto_0

    .line 912
    :cond_3
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03002a

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 913
    const v2, 0x7f0c0093

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->textView:Landroid/widget/TextView;

    .line 914
    iput v8, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    goto/16 :goto_0

    .line 920
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    check-cast v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;

    .restart local v1       #holder:Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;
    goto :goto_1

    .line 928
    :cond_5
    if-ne p1, v4, :cond_6

    .line 929
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 930
    :cond_6
    if-ne p1, v5, :cond_7

    .line 931
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->InvertImage:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 932
    :cond_7
    if-ne p1, v7, :cond_8

    .line 933
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->EnableImageSharpen:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_2

    .line 934
    :cond_8
    const/4 v2, 0x5

    if-ne p1, v2, :cond_9

    .line 935
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->EnableBorderDetect:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    .line 936
    :cond_9
    const/4 v2, 0x6

    if-ne p1, v2, :cond_a

    .line 937
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->LockHorizontalMove:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    .line 938
    :cond_a
    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    .line 939
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->LockVerticalMove:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    .line 941
    :cond_b
    iget v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->LayoutType:I

    if-ne v2, v5, :cond_0

    .line 942
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TSubMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->CheckMenuPosition:I
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$2(Lcom/rookiestudio/perfectviewer/TMainMenu;)I

    move-result v2

    if-ne v2, p1, :cond_c

    .line 943
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2

    .line 945
    :cond_c
    iget-object v2, v1, Lcom/rookiestudio/perfectviewer/TMainMenu$ViewHolder;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v8}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 883
    const/4 v0, 0x4

    return v0
.end method

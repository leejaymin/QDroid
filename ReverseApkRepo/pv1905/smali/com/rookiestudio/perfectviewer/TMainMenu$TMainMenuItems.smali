.class Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;
.super Landroid/widget/BaseAdapter;
.source "TMainMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TMainMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TMainMenuItems"
.end annotation


# instance fields
.field private MenuIcons1:[I

.field private MenuIcons2:[I

.field private MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TMainMenu;Landroid/content/Context;)V
    .locals 8
    .parameter
    .parameter "c"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 752
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    .line 751
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 753
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    .line 755
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0012

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0013

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0015

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    const v2, 0x7f0a0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    .line 764
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const v1, 0x7f020055

    aput v1, v0, v3

    .line 765
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const v1, 0x7f020053

    aput v1, v0, v4

    .line 766
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const v1, 0x7f02005f

    aput v1, v0, v5

    .line 767
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const v1, 0x7f02005b

    aput v1, v0, v6

    .line 768
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const v1, 0x7f020059

    aput v1, v0, v7

    .line 769
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const/4 v1, 0x5

    const v2, 0x7f020051

    aput v2, v0, v1

    .line 770
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const/4 v1, 0x6

    const v2, 0x7f02005d

    aput v2, v0, v1

    .line 771
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    const/4 v1, 0x7

    const v2, 0x7f020057

    aput v2, v0, v1

    .line 772
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    .line 773
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const v1, 0x7f020056

    aput v1, v0, v3

    .line 774
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const v1, 0x7f020054

    aput v1, v0, v4

    .line 775
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const v1, 0x7f020060

    aput v1, v0, v5

    .line 776
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const v1, 0x7f02005c

    aput v1, v0, v6

    .line 777
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const v1, 0x7f02005a

    aput v1, v0, v7

    .line 778
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const/4 v1, 0x5

    const v2, 0x7f020052

    aput v2, v0, v1

    .line 779
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const/4 v1, 0x6

    const v2, 0x7f02005e

    aput v2, v0, v1

    .line 780
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    const/4 v1, 0x7

    const v2, 0x7f020058

    aput v2, v0, v1

    .line 781
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 796
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 789
    const/4 v0, 0x0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 799
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 803
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    move-object v1, p2

    .line 819
    .end local p2
    .local v1, convertView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 807
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 808
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$0(Lcom/rookiestudio/perfectviewer/TMainMenu;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030020

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 810
    :cond_1
    const v2, 0x7f0c0060

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 812
    .local v0, FileIcon:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->this$0:Lcom/rookiestudio/perfectviewer/TMainMenu;

    #getter for: Lcom/rookiestudio/perfectviewer/TMainMenu;->MainMenuPosition:I
    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/TMainMenu;->access$1(Lcom/rookiestudio/perfectviewer/TMainMenu;)I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 813
    const v2, 0x7f020094

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 814
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons2:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v1, p2

    .line 819
    .end local p2
    .restart local v1       #convertView:Landroid/view/View;
    goto :goto_0

    .line 816
    .end local v1           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 817
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TMainMenu$TMainMenuItems;->MenuIcons1:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

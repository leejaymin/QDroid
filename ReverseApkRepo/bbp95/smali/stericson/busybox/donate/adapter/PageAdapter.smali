.class public Lstericson/busybox/donate/adapter/PageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PageAdapter.java"

# interfaces
.implements Lcom/viewpagerindicator/TitleProvider;


# static fields
.field private static foundAt:Lstericson/busybox/donate/custom/FontableTextView;

.field private static titles:[Ljava/lang/String;


# instance fields
.field private final context:Lstericson/busybox/donate/Activity/MainActivity;

.field private path:Landroid/widget/Spinner;

.field private version:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 36
    const-string v2, "Applet Manager"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 37
    const-string v2, "Install Busybox"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 38
    const-string v2, "About BusyBox"

    aput-object v2, v0, v1

    .line 34
    sput-object v0, Lstericson/busybox/donate/adapter/PageAdapter;->titles:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    .line 46
    return-void
.end method

.method public static updateBusyboxInformation()V
    .locals 2

    .prologue
    .line 183
    :try_start_0
    sget-object v0, Lstericson/busybox/donate/adapter/PageAdapter;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getFound()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .parameter "pager"
    .parameter "position"
    .parameter "view"

    .prologue
    .line 152
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    check-cast p3, Landroid/view/View;

    .end local p3
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 153
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 162
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lstericson/busybox/donate/adapter/PageAdapter;->titles:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 176
    sget-object v0, Lstericson/busybox/donate/adapter/PageAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 11
    .parameter "pager"
    .parameter "position"

    .prologue
    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/Activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 60
    .local v0, inflater:Landroid/view/LayoutInflater;
    if-nez p2, :cond_2

    .line 62
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v7

    invoke-virtual {v7}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 64
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 65
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 66
    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v7, 0x7f05000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Lstericson/busybox/donate/Activity/MainActivity;->setListView(Landroid/widget/ListView;)V

    .line 67
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v7}, Lstericson/busybox/donate/Activity/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 69
    .local v2, listView:Landroid/widget/ListView;
    new-instance v7, Lstericson/busybox/donate/adapter/AppletAdapter;

    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v7, v8}, Lstericson/busybox/donate/adapter/AppletAdapter;-><init>(Lstericson/busybox/donate/Activity/BaseActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 70
    new-instance v7, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;

    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v7, v8}, Lstericson/busybox/donate/listeners/AppletInstallerLongClickListener;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 71
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 146
    .end local v2           #listView:Landroid/widget/ListView;
    :cond_0
    :goto_0
    return-object v6

    .line 75
    .restart local p1
    :cond_1
    const v7, 0x7f030009

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 76
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 77
    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v7, 0x7f05002b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lstericson/busybox/donate/Activity/MainActivity;->view1:Landroid/widget/TextView;

    goto :goto_0

    .line 80
    .restart local p1
    :cond_2
    const/4 v7, 0x1

    if-ne p2, v7, :cond_5

    .line 82
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v7

    invoke-virtual {v7}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 84
    const v7, 0x7f030001

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 85
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 86
    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v7, 0x7f05000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v8, v7}, Lstericson/busybox/donate/Activity/MainActivity;->setListView(Landroid/widget/ListView;)V

    .line 87
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v7}, Lstericson/busybox/donate/Activity/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 89
    .restart local v2       #listView:Landroid/widget/ListView;
    new-instance v7, Lstericson/busybox/donate/adapter/TuneAdapter;

    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v7, v8}, Lstericson/busybox/donate/adapter/TuneAdapter;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setCacheColorHint(I)V

    goto :goto_0

    .line 94
    .end local v2           #listView:Landroid/widget/ListView;
    .restart local p1
    :cond_3
    const v7, 0x7f030006

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 95
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 97
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isBusyboxAvailable()Z

    move-result v1

    .line 99
    .local v1, installed:Z
    const v7, 0x7f05001e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lstericson/busybox/donate/custom/FontableTextView;

    sput-object v7, Lstericson/busybox/donate/adapter/PageAdapter;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    .line 101
    if-eqz v1, :cond_4

    .line 103
    sget-object v7, Lstericson/busybox/donate/adapter/PageAdapter;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    const-string v8, " ?????"

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_1
    const v7, 0x7f050020

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->version:Landroid/widget/Spinner;

    .line 111
    new-instance v5, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v8, 0x7f03000a

    sget-object v9, Lstericson/busybox/donate/Constants;->versions:[Ljava/lang/String;

    invoke-direct {v5, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 112
    .local v5, versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v5, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 113
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->version:Landroid/widget/Spinner;

    new-instance v8, Lstericson/busybox/donate/listeners/Version;

    invoke-direct {v8}, Lstericson/busybox/donate/listeners/Version;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->version:Landroid/widget/Spinner;

    invoke-virtual {v7, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 116
    const v7, 0x7f050021

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    iput-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->path:Landroid/widget/Spinner;

    .line 117
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v8, 0x7f03000a

    sget-object v9, Lstericson/busybox/donate/Constants;->locations:[Ljava/lang/String;

    invoke-direct {v3, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 118
    .local v3, locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x1090009

    invoke-virtual {v3, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 119
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->path:Landroid/widget/Spinner;

    invoke-virtual {v7, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->path:Landroid/widget/Spinner;

    new-instance v8, Lstericson/busybox/donate/listeners/Location;

    iget-object v9, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v8, v9}, Lstericson/busybox/donate/listeners/Location;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 121
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->path:Landroid/widget/Spinner;

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v8

    invoke-virtual {v8}, Lstericson/busybox/donate/App;->getPathPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v7, 0x7f050022

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lstericson/busybox/donate/custom/FontableTextView;

    invoke-virtual {v8, v7}, Lstericson/busybox/donate/Activity/MainActivity;->setFreeSpace(Landroid/widget/TextView;)V

    .line 126
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v7}, Lstericson/busybox/donate/Activity/MainActivity;->getFreeSpace()Landroid/widget/TextView;

    move-result-object v7

    const-string v8, " ?????"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v8, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v7, 0x7f05002b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v8, Lstericson/busybox/donate/Activity/MainActivity;->view2:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 107
    .end local v3           #locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v5           #versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    sget-object v7, Lstericson/busybox/donate/adapter/PageAdapter;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v10, 0x7f0b001b

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v10, 0x7f0b001a

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 131
    .end local v1           #installed:Z
    .restart local p1
    :cond_5
    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    .line 133
    new-instance v6, Landroid/widget/ScrollView;

    .end local v6           #view:Landroid/view/View;
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v6, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 134
    .restart local v6       #view:Landroid/view/View;
    new-instance v4, Lstericson/busybox/donate/custom/FontableTextView;

    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v4, v7}, Lstericson/busybox/donate/custom/FontableTextView;-><init>(Landroid/content/Context;)V

    .local v4, tv:Lstericson/busybox/donate/custom/FontableTextView;
    move-object v7, v6

    .line 135
    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 136
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 138
    iget-object v7, p0, Lstericson/busybox/donate/adapter/PageAdapter;->context:Lstericson/busybox/donate/Activity/MainActivity;

    const v8, 0x7f0b0044

    invoke-virtual {v7, v8}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/16 v7, 0xf

    invoke-static {v4, v7}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto/16 :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter "view"
    .parameter "object"

    .prologue
    .line 158
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0
    .parameter "p"
    .parameter "c"

    .prologue
    .line 165
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 173
    return-void
.end method

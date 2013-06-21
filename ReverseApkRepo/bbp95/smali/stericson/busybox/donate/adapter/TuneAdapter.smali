.class public Lstericson/busybox/donate/adapter/TuneAdapter;
.super Landroid/widget/BaseAdapter;
.source "TuneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;,
        Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/MainActivity;

.field private all:Landroid/widget/CheckBox;

.field private colors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lstericson/busybox/donate/adapter/TuneAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method

.method public constructor <init>(Lstericson/busybox/donate/Activity/MainActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->colors:[I

    .line 36
    iput-object p1, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lstericson/busybox/donate/Activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lstericson/busybox/donate/adapter/TuneAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 40
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lstericson/busybox/donate/App;->setTuneadapter(Lstericson/busybox/donate/adapter/TuneAdapter;)V

    .line 41
    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x30t 0x30t 0x30t 0xfft
        0x40t 0x40t 0x40t 0xfft
    .end array-data
.end method

.method static synthetic access$0(Lstericson/busybox/donate/adapter/TuneAdapter;)Lstericson/busybox/donate/Activity/MainActivity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    return-object v0
.end method

.method static synthetic access$1(Lstericson/busybox/donate/adapter/TuneAdapter;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->all:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getHolder(Landroid/view/View;I)Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;
    .locals 2
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p1, :cond_0

    .line 79
    if-eqz p2, :cond_1

    .line 81
    new-instance v0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    invoke-direct {v0, p0, v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)V

    .line 95
    :goto_0
    return-object v0

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 88
    if-eqz p2, :cond_1

    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 95
    goto :goto_0
.end method

.method private getInformationHolder(Landroid/view/View;I)Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;
    .locals 2
    .parameter "convertView"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 100
    if-nez p1, :cond_0

    .line 102
    if-nez p2, :cond_1

    .line 104
    new-instance v0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;

    invoke-direct {v0, p0, v1}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)V

    .line 118
    :goto_0
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    if-nez p2, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 118
    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 379
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v1

    invoke-virtual {v1}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 382
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    const/4 v0, 0x0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    move-object v8, p2

    .line 124
    .local v8, vi:Landroid/view/View;
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    .line 125
    .local v0, app:Lstericson/busybox/donate/App;
    invoke-direct {p0, p2, p1}, Lstericson/busybox/donate/adapter/TuneAdapter;->getHolder(Landroid/view/View;I)Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;

    move-result-object v1

    .line 126
    .local v1, holder:Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;
    invoke-direct {p0, p2, p1}, Lstericson/busybox/donate/adapter/TuneAdapter;->getInformationHolder(Landroid/view/View;I)Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;

    move-result-object v2

    .line 129
    .local v2, info_holder:Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;
    if-nez p2, :cond_0

    .line 131
    if-nez p1, :cond_3

    .line 133
    sget-object v9, Lstericson/busybox/donate/adapter/TuneAdapter;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030006

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 135
    const v9, 0x7f05001e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lstericson/busybox/donate/custom/FontableTextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$1(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Lstericson/busybox/donate/custom/FontableTextView;)V

    .line 136
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v9

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v10

    invoke-virtual {v10}, Lstericson/busybox/donate/App;->getFound()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v9, 0x7f050020

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$3(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/Spinner;)V

    .line 139
    new-instance v7, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v10, 0x7f03000a

    sget-object v11, Lstericson/busybox/donate/Constants;->versions:[Ljava/lang/String;

    invoke-direct {v7, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 140
    .local v7, versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v7, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 141
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$4(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 142
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$4(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/listeners/Version;

    invoke-direct {v10}, Lstericson/busybox/donate/listeners/Version;-><init>()V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->version:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$4(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v10

    invoke-virtual {v10}, Lstericson/busybox/donate/App;->getVersionPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 145
    const v9, 0x7f050021

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$5(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/Spinner;)V

    .line 146
    new-instance v4, Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v10, 0x7f03000a

    sget-object v11, Lstericson/busybox/donate/Constants;->locations:[Ljava/lang/String;

    invoke-direct {v4, v9, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 147
    .local v4, locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v4, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 148
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$6(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 149
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$6(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/listeners/Location;

    iget-object v11, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v10, v11}, Lstericson/busybox/donate/listeners/Location;-><init>(Lstericson/busybox/donate/Activity/MainActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->path:Landroid/widget/Spinner;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$6(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/Spinner;

    move-result-object v9

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v10

    invoke-virtual {v10}, Lstericson/busybox/donate/App;->getPathPosition()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setSelection(I)V

    .line 152
    iget-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v9}, Lstericson/busybox/donate/Activity/MainActivity;->getFreeSpace()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, space:Ljava/lang/String;
    iget-object v10, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v9, 0x7f050022

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lstericson/busybox/donate/custom/FontableTextView;

    invoke-virtual {v10, v9}, Lstericson/busybox/donate/Activity/MainActivity;->setFreeSpace(Landroid/widget/TextView;)V

    .line 156
    iget-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-virtual {v9}, Lstericson/busybox/donate/Activity/MainActivity;->getFreeSpace()Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    const v9, 0x7f050029

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->container:Landroid/widget/LinearLayout;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$7(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/LinearLayout;)V

    .line 159
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->container:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$8(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/LinearLayout;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    const v9, 0x7f050028

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lstericson/busybox/donate/custom/FontableTextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Lstericson/busybox/donate/custom/FontableTextView;)V

    .line 162
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v10

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-virtual {v10, v9}, Lstericson/busybox/donate/custom/FontableTextView;->setVisibility(I)V

    .line 163
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v9

    const v10, 0x7f0b0045

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/custom/FontableTextView;->setText(I)V

    .line 165
    const v9, 0x7f050025

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->options:Landroid/widget/LinearLayout;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/LinearLayout;)V

    .line 166
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->options:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    const v9, 0x7f050026

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    iput-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->all:Landroid/widget/CheckBox;

    .line 170
    iget-object v9, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->all:Landroid/widget/CheckBox;

    new-instance v10, Lstericson/busybox/donate/adapter/TuneAdapter$1;

    invoke-direct {v10, p0, v0}, Lstericson/busybox/donate/adapter/TuneAdapter$1;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/App;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    const v9, 0x7f050027

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->clean:Landroid/widget/CheckBox;
    invoke-static {v2, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$13(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;Landroid/widget/CheckBox;)V

    .line 190
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->clean:Landroid/widget/CheckBox;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$14(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/adapter/TuneAdapter$2;

    invoke-direct {v10, p0}, Lstericson/busybox/donate/adapter/TuneAdapter$2;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 202
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    .end local v4           #locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #space:Ljava/lang/String;
    .end local v7           #versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_2
    if-nez p1, :cond_6

    .line 230
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->foundAt:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v9

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v10

    invoke-virtual {v10}, Lstericson/busybox/donate/App;->getFound()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/custom/FontableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->options:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Landroid/widget/LinearLayout;

    move-result-object v10

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 234
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v10

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->isToggled()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    :goto_4
    invoke-virtual {v10, v9}, Lstericson/busybox/donate/custom/FontableTextView;->setVisibility(I)V

    .line 235
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->status:Lstericson/busybox/donate/custom/FontableTextView;
    invoke-static {v2}, Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$InformationHolder;)Lstericson/busybox/donate/custom/FontableTextView;

    move-result-object v9

    const v10, 0x7f0b0045

    invoke-virtual {v9, v10}, Lstericson/busybox/donate/custom/FontableTextView;->setText(I)V

    .line 373
    :goto_5
    return-object v8

    .line 162
    .restart local v4       #locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v6       #space:Ljava/lang/String;
    .restart local v7       #versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    const/16 v9, 0x8

    goto/16 :goto_0

    .line 166
    :cond_2
    const/16 v9, 0x8

    goto :goto_1

    .line 206
    .end local v4           #locationAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v6           #space:Ljava/lang/String;
    .end local v7           #versionAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_3
    sget-object v9, Lstericson/busybox/donate/adapter/TuneAdapter;->inflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030004

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 208
    const v9, 0x7f050005

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$1(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/RelativeLayout;)V

    .line 209
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 210
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/listeners/AppletLongClickListener;

    iget-object v11, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    invoke-direct {v10, v11}, Lstericson/busybox/donate/listeners/AppletLongClickListener;-><init>(Lstericson/busybox/donate/Activity/BaseActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 212
    const v9, 0x7f050012

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$3(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/CheckBox;)V

    .line 214
    const v9, 0x7f050014

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$4(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/CheckBox;)V

    .line 216
    const v9, 0x7f050013

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$5(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 218
    const v9, 0x7f050008

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$6(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 220
    const v9, 0x7f050009

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$7(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 222
    const v9, 0x7f050015

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletRecomendation:Landroid/widget/TextView;
    invoke-static {v1, v9}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$8(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 224
    invoke-virtual {v8, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 232
    :cond_4
    const/16 v9, 0x8

    goto/16 :goto_3

    .line 234
    :cond_5
    const/16 v9, 0x8

    goto/16 :goto_4

    .line 239
    :cond_6
    add-int/lit8 v5, p1, -0x1

    .line 241
    .local v5, modified_position:I
    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lstericson/busybox/donate/domain/Item;

    .line 243
    .local v3, item:Lstericson/busybox/donate/domain/Item;
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/adapter/TuneAdapter$3;

    invoke-direct {v10, p0, v3, v1}, Lstericson/busybox/donate/adapter/TuneAdapter$3;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/domain/Item;Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 264
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 265
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    new-instance v10, Lstericson/busybox/donate/adapter/TuneAdapter$4;

    invoke-direct {v10, p0, v3, v1}, Lstericson/busybox/donate/adapter/TuneAdapter$4;-><init>(Lstericson/busybox/donate/adapter/TuneAdapter;Lstericson/busybox/donate/domain/Item;Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)V

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 308
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v10

    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getOverwriteall()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_6
    invoke-virtual {v10, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 310
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletCheck:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 312
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0037

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 313
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 336
    :goto_7
    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getFound()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 338
    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 340
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$13(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0033

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 342
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v12, 0x7f0b0039

    invoke-virtual {v11, v12}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_8
    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getRecommend()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 358
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletRecomendation:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$14(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0036

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 365
    :goto_9
    rem-int/lit8 v9, p1, 0x2

    if-nez v9, :cond_d

    .line 366
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->colors:[I

    rem-int/lit8 v11, p1, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_5

    .line 308
    :cond_7
    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getOverWrite()Z

    move-result v9

    goto/16 :goto_6

    .line 318
    :cond_8
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0038

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 319
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletState:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$11(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 322
    invoke-virtual {v3}, Lstericson/busybox/donate/domain/Item;->getRemove()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 324
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const v10, 0x7f0b003f

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 325
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const/high16 v10, -0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 326
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7

    .line 330
    :cond_9
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const v10, 0x7f0b0040

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setText(I)V

    .line 331
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 332
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletDecision:Landroid/widget/CheckBox;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/CheckBox;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_7

    .line 346
    :cond_a
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 347
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$13(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0034

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_8

    .line 352
    :cond_b
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$13(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0032

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    .line 353
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$12(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->activity:Lstericson/busybox/donate/Activity/MainActivity;

    const v11, 0x7f0b003a

    invoke-virtual {v10, v11}, Lstericson/busybox/donate/Activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 362
    :cond_c
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->appletRecomendation:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$14(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v9

    const v10, 0x7f0b0035

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9

    .line 368
    :cond_d
    #getter for: Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;->access$2(Lstericson/busybox/donate/adapter/TuneAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v9

    iget-object v10, p0, Lstericson/busybox/donate/adapter/TuneAdapter;->colors:[I

    rem-int/lit8 v11, p1, 0x2

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x2

    return v0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p0}, Lstericson/busybox/donate/adapter/TuneAdapter;->notifyDataSetChanged()V

    .line 401
    return-void
.end method

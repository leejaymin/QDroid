.class public Lstericson/busybox/donate/adapter/AppletAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppletAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static inflater:Landroid/view/LayoutInflater;


# instance fields
.field private activity:Lstericson/busybox/donate/Activity/BaseActivity;

.field private colors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lstericson/busybox/donate/adapter/AppletAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 15
    return-void
.end method

.method public constructor <init>(Lstericson/busybox/donate/Activity/BaseActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->colors:[I

    .line 23
    iput-object p1, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lstericson/busybox/donate/Activity/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, Lstericson/busybox/donate/adapter/AppletAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 27
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Lstericson/busybox/donate/App;->setAppletadapter(Lstericson/busybox/donate/adapter/AppletAdapter;)V

    .line 28
    return-void

    .line 17
    nop

    :array_0
    .array-data 0x4
        0x30t 0x30t 0x30t 0xfft
        0x40t 0x40t 0x40t 0xfft
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 37
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 51
    move-object v3, p2

    .line 53
    .local v3, vi:Landroid/view/View;
    invoke-static {}, Lstericson/busybox/donate/App;->getInstance()Lstericson/busybox/donate/App;

    move-result-object v0

    .line 55
    .local v0, app:Lstericson/busybox/donate/App;
    if-nez p2, :cond_0

    .line 57
    sget-object v4, Lstericson/busybox/donate/adapter/AppletAdapter;->inflater:Landroid/view/LayoutInflater;

    const/high16 v5, 0x7f03

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 58
    new-instance v1, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;

    invoke-direct {v1, p0, v6}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;-><init>(Lstericson/busybox/donate/adapter/AppletAdapter;Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)V

    .line 60
    .local v1, holder:Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;
    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    #setter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1, v4}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$1(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/RelativeLayout;)V

    .line 62
    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->applet:Landroid/widget/TextView;
    invoke-static {v1, v4}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$2(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 64
    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1, v4}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$3(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 66
    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1, v4}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$4(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 68
    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    #setter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletInformation:Landroid/widget/TextView;
    invoke-static {v1, v4}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$5(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;Landroid/widget/TextView;)V

    .line 70
    invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 77
    :goto_0
    invoke-virtual {v0}, Lstericson/busybox/donate/App;->getItemList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lstericson/busybox/donate/domain/Item;

    .line 79
    .local v2, item:Lstericson/busybox/donate/domain/Item;
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->applet:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$6(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getApplet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getFound()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 83
    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$7(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$8(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b0033

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 87
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$7(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    const v7, 0x7f0b0039

    invoke-virtual {v6, v7}, Lstericson/busybox/donate/Activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getSymlinkedTo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_1
    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 103
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletInformation:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    const v6, 0x7f0b003d

    invoke-virtual {v5, v6}, Lstericson/busybox/donate/Activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :goto_2
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_4

    .line 111
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->colors:[I

    rem-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 116
    :goto_3
    return-object v3

    .line 74
    .end local v1           #holder:Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;
    .end local v2           #item:Lstericson/busybox/donate/domain/Item;
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;

    .restart local v1       #holder:Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;
    goto/16 :goto_0

    .line 91
    .restart local v2       #item:Lstericson/busybox/donate/domain/Item;
    :cond_1
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$7(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$8(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b0034

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 97
    :cond_2
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletStatus:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$8(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0b0032

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 98
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletSymlinkedTo:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$7(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->activity:Lstericson/busybox/donate/Activity/BaseActivity;

    const v6, 0x7f0b003a

    invoke-virtual {v5, v6}, Lstericson/busybox/donate/Activity/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 107
    :cond_3
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->appletInformation:Landroid/widget/TextView;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$9(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v2}, Lstericson/busybox/donate/domain/Item;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 113
    :cond_4
    #getter for: Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->container:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;->access$10(Lstericson/busybox/donate/adapter/AppletAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v4

    iget-object v5, p0, Lstericson/busybox/donate/adapter/AppletAdapter;->colors:[I

    rem-int/lit8 v6, p1, 0x2

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_3
.end method

.method public update()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lstericson/busybox/donate/adapter/AppletAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

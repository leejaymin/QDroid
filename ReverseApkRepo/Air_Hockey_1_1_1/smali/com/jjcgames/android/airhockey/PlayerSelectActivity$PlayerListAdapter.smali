.class Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlayerSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjcgames/android/airhockey/PlayerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private players:[Lcom/jjcgames/android/airhockey/Player;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/jjcgames/android/airhockey/Player;)V
    .locals 0
    .parameter "context"
    .parameter "players"

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    .line 72
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 90
    const-wide/16 v0, -0x1

    .line 92
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, p1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 97
    move-object v4, p2

    .line 98
    .local v4, v:Landroid/view/View;
    if-nez v4, :cond_0

    .line 99
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->context:Landroid/content/Context;

    .line 100
    const-string v6, "layout_inflater"

    .line 99
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 101
    const v6, 0x7f030004

    invoke-virtual {v5, v6, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    array-length v5, v5

    if-ne p1, v5, :cond_1

    move v0, v8

    .line 104
    .local v0, guest:Z
    :goto_0
    const v5, 0x7f09000e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 105
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->context:Landroid/content/Context;

    const v7, 0x7f07000d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 104
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v5, 0x7f09000f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, level:Landroid/widget/TextView;
    const v5, 0x7f090010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, guest_note:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_2
    return-object v4

    .end local v0           #guest:Z
    .end local v1           #guest_note:Landroid/view/View;
    .end local v2           #level:Landroid/widget/TextView;
    :cond_1
    move v0, v9

    .line 103
    goto :goto_0

    .line 105
    .restart local v0       #guest:Z
    :cond_2
    iget-object v6, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/jjcgames/android/airhockey/Player;->name:Ljava/lang/String;

    goto :goto_1

    .line 112
    .restart local v1       #guest_note:Landroid/view/View;
    .restart local v2       #level:Landroid/widget/TextView;
    :cond_3
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->players:[Lcom/jjcgames/android/airhockey/Player;

    aget-object v5, v5, p1

    iget v3, v5, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 113
    .local v3, lv:I
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->context:Landroid/content/Context;

    .line 114
    const v6, 0x7f07000f

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v5, p0, Lcom/jjcgames/android/airhockey/PlayerSelectActivity$PlayerListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 116
    invoke-static {v3}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getColorResourceIDForLevel(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 115
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

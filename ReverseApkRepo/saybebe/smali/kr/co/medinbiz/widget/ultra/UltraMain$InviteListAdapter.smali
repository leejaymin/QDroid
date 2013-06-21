.class Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
.super Landroid/widget/BaseAdapter;
.source "UltraMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InviteListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;


# direct methods
.method public constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "aContext"

    .prologue
    .line 160
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 161
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 162
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v0

    invoke-virtual {v0}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 171
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x1

    .line 176
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Invite;

    .line 180
    .local v1, lInvite:Lkr/co/medinbiz/dto/Invite;
    if-nez p2, :cond_1

    .line 181
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lkr/co/medinbiz/R$layout;->ultra_main_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 182
    new-instance v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;

    invoke-direct {v0, p0, p2}, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;Landroid/view/View;)V

    .line 183
    .local v0, invtCell:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    :goto_0
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 189
    iget-object v2, v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->cellBG:Landroid/widget/LinearLayout;

    sget v3, Lkr/co/medinbiz/R$drawable;->menu_all:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 200
    :cond_0
    :goto_1
    iget-object v2, v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->mName:Landroid/widget/TextView;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lkr/co/medinbiz/R$string;->user_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Invite;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-object p2

    .line 185
    .end local v0           #invtCell:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;

    .restart local v0       #invtCell:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;
    goto :goto_0

    .line 191
    :cond_2
    iget-object v2, v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->cellBG:Landroid/widget/LinearLayout;

    sget v3, Lkr/co/medinbiz/R$drawable;->menu_middle:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 193
    if-nez p1, :cond_3

    .line 194
    iget-object v2, v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->cellBG:Landroid/widget/LinearLayout;

    sget v3, Lkr/co/medinbiz/R$drawable;->menu_top:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 195
    :cond_3
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v2

    invoke-virtual {v2}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 196
    iget-object v2, v0, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter$InViteCel;->cellBG:Landroid/widget/LinearLayout;

    .line 197
    sget v3, Lkr/co/medinbiz/R$drawable;->menu_bottom:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_1
.end method

.class Lcom/wareone/tappmt/ReportList$SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReportList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/ReportList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/wareone/tappmt/ReportList;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/ReportList;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->this$0:Lcom/wareone/tappmt/ReportList;

    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->this$0:Lcom/wareone/tappmt/ReportList;

    #getter for: Lcom/wareone/tappmt/ReportList;->m_data:[Ljava/lang/String;
    invoke-static {v0}, Lcom/wareone/tappmt/ReportList;->access$0(Lcom/wareone/tappmt/ReportList;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    new-instance v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/ReportList$SettingAdapter;)V

    .line 94
    .local v0, holder:Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;
    const v1, 0x7f0c0084

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 95
    const v1, 0x7f0c0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    :goto_0
    iget-object v1, v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->this$0:Lcom/wareone/tappmt/ReportList;

    #getter for: Lcom/wareone/tappmt/ReportList;->m_data:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/ReportList;->access$0(Lcom/wareone/tappmt/ReportList;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_1
    return-object p2

    .line 101
    .end local v0           #holder:Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;
    goto :goto_0

    .line 113
    :pswitch_0
    iget-object v1, v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->this$0:Lcom/wareone/tappmt/ReportList;

    #getter for: Lcom/wareone/tappmt/ReportList;->m_icons:[I
    invoke-static {v2}, Lcom/wareone/tappmt/ReportList;->access$1(Lcom/wareone/tappmt/ReportList;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 119
    :pswitch_1
    iget-object v1, v0, Lcom/wareone/tappmt/ReportList$SettingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wareone/tappmt/ReportList$SettingAdapter;->this$0:Lcom/wareone/tappmt/ReportList;

    #getter for: Lcom/wareone/tappmt/ReportList;->m_icons:[I
    invoke-static {v2}, Lcom/wareone/tappmt/ReportList;->access$1(Lcom/wareone/tappmt/ReportList;)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

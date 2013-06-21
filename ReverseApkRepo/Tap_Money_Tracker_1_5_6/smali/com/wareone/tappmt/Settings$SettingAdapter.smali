.class Lcom/wareone/tappmt/Settings$SettingAdapter;
.super Landroid/widget/BaseAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wareone/tappmt/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/wareone/tappmt/Settings;


# direct methods
.method public constructor <init>(Lcom/wareone/tappmt/Settings;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->this$0:Lcom/wareone/tappmt/Settings;

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->mIcon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->this$0:Lcom/wareone/tappmt/Settings;

    #getter for: Lcom/wareone/tappmt/Settings;->m_data:[Ljava/lang/String;
    invoke-static {v0}, Lcom/wareone/tappmt/Settings;->access$0(Lcom/wareone/tappmt/Settings;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 73
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v1, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03002b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 95
    new-instance v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;-><init>(Lcom/wareone/tappmt/Settings$SettingAdapter;)V

    .line 96
    .local v0, holder:Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;
    const v1, 0x7f0c0084

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0c0083

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    :goto_0
    iget-object v1, v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->this$0:Lcom/wareone/tappmt/Settings;

    #getter for: Lcom/wareone/tappmt/Settings;->m_data:[Ljava/lang/String;
    invoke-static {v2}, Lcom/wareone/tappmt/Settings;->access$0(Lcom/wareone/tappmt/Settings;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/wareone/tappmt/Settings$SettingAdapter;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    return-object p2

    .line 103
    .end local v0           #holder:Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/wareone/tappmt/Settings$SettingAdapter$ViewHolder;
    goto :goto_0
.end method

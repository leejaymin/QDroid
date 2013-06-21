.class Lcom/ui/LapseIt/ProListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProVersionView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static descIds:[I

.field private static imageIds:[I

.field private static titleIds:[I


# instance fields
.field mContext:Landroid/content/Context;

.field mLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 215
    const/4 v0, 0x7

    new-array v0, v0, [I

    const v1, 0x7f02008d

    aput v1, v0, v3

    const v1, 0x7f02008c

    aput v1, v0, v2

    const v1, 0x7f02008f

    aput v1, v0, v4

    const v1, 0x7f02008e

    aput v1, v0, v5

    const v1, 0x7f020090

    aput v1, v0, v6

    const/4 v1, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/ui/LapseIt/ProListAdapter;->imageIds:[I

    .line 216
    const/4 v0, 0x7

    new-array v0, v0, [I

    const v1, 0x7f080107

    aput v1, v0, v3

    const v1, 0x7f080109

    aput v1, v0, v2

    const v1, 0x7f08010b

    aput v1, v0, v4

    const v1, 0x7f08010d

    aput v1, v0, v5

    const v1, 0x7f08010f

    aput v1, v0, v6

    const/4 v1, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/ui/LapseIt/ProListAdapter;->titleIds:[I

    .line 217
    const/4 v0, 0x7

    new-array v0, v0, [I

    const v1, 0x7f080108

    aput v1, v0, v3

    const v1, 0x7f08010a

    aput v1, v0, v2

    const v1, 0x7f08010c

    aput v1, v0, v4

    const v1, 0x7f08010e

    aput v1, v0, v5

    const v1, 0x7f080110

    aput v1, v0, v6

    const/4 v1, 0x6

    aput v2, v0, v1

    sput-object v0, Lcom/ui/LapseIt/ProListAdapter;->descIds:[I

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 225
    iput-object p1, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    .line 226
    iput p2, p0, Lcom/ui/LapseIt/ProListAdapter;->mLayoutId:I

    .line 227
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/ui/LapseIt/ProListAdapter;->titleIds:[I

    array-length v0, v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 290
    sparse-switch p1, :sswitch_data_0

    .line 298
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 292
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 290
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-virtual {p0, p1}, Lcom/ui/LapseIt/ProListAdapter;->getItemViewType(I)I

    move-result v2

    .line 234
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 285
    :goto_0
    return-object p2

    .line 236
    :pswitch_0
    iget-object v3, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030019

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 237
    .restart local p2
    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v3, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lcom/ui/LapseIt/ProListAdapter;->mLayoutId:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 242
    .restart local p2
    new-instance v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;

    invoke-direct {v0, p0, v5}, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;-><init>(Lcom/ui/LapseIt/ProListAdapter;Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;)V

    .line 243
    .local v0, contentRenderer:Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;
    const v3, 0x7f0b005c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->imageContainer:Landroid/widget/ImageView;

    .line 244
    const v3, 0x7f0b005d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->title:Landroid/widget/TextView;

    .line 245
    const v3, 0x7f0b005e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->description:Landroid/widget/TextView;

    .line 247
    iget-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->imageContainer:Landroid/widget/ImageView;

    sget-object v4, Lcom/ui/LapseIt/ProListAdapter;->imageIds:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 248
    iget-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/ui/LapseIt/ProListAdapter;->titleIds:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v3, v0, Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;->description:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/ui/LapseIt/ProListAdapter;->descIds:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 253
    .end local v0           #contentRenderer:Lcom/ui/LapseIt/ProListAdapter$ContentRenderer;
    :pswitch_2
    iget-object v3, p0, Lcom/ui/LapseIt/ProListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030018

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/RelativeLayout;

    .line 254
    .restart local p2
    const v3, 0x7f0b005a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 255
    .local v1, marketIcon:Landroid/widget/ImageView;
    new-instance v3, Lcom/ui/LapseIt/ProListAdapter$1;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/ProListAdapter$1;-><init>(Lcom/ui/LapseIt/ProListAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x3

    return v0
.end method

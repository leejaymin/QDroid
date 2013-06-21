.class public Lcom/fleapapa/helper/Avatar$AvatarAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Avatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/Avatar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AvatarAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fleapapa/helper/Avatar;


# direct methods
.method public constructor <init>(Lcom/fleapapa/helper/Avatar;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    .local p0, this:Lcom/fleapapa/helper/Avatar$AvatarAdapter;,"Lcom/fleapapa/helper/Avatar$AvatarAdapter<TT;>;"
    iput-object p1, p0, Lcom/fleapapa/helper/Avatar$AvatarAdapter;->this$0:Lcom/fleapapa/helper/Avatar;

    .line 73
    const v0, 0x1090003

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 76
    .local p0, this:Lcom/fleapapa/helper/Avatar$AvatarAdapter;,"Lcom/fleapapa/helper/Avatar$AvatarAdapter<TT;>;"
    iget-object v2, p0, Lcom/fleapapa/helper/Avatar$AvatarAdapter;->this$0:Lcom/fleapapa/helper/Avatar;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/Avatar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 77
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/high16 v2, 0x7f03

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 78
    .local v1, ll:Landroid/widget/LinearLayout;
    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Lcom/fleapapa/helper/Avatar;->avatars:[I

    invoke-virtual {p0, p1}, Lcom/fleapapa/helper/Avatar$AvatarAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/fleapapa/helper/Avatar$AvatarAdapter;,"Lcom/fleapapa/helper/Avatar$AvatarAdapter<TT;>;"
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    return-object v1
.end method
